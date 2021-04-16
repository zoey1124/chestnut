import numpy as np
import sys

class GSet(object):
    """An grow-only set object"""
    def __init__(self):
        self.gset = set()

    def add(self, elm):
        self.gset.add(elm)

    def query(self):
        return self.gset

    def merge(self, b):
        """
        param b: another GSet object
        return: void, but update local copy of gset
        """
        self.gset = self.gset.union(b.gset)

class USet(object):
    """
    A set allows for add and remove.
    Assume that every element is unique and added only once
    """
    def __init__(self):
        self.add_set = set()
        self.remove_set = set()

    def query(self):
        return self.add_set - self.remove_set

    def add(self, e):
        self.add_set.add(e)

    def remove(self, e):
        self.remove_set.add(e)

    def merge(self, other_node):
        self.add_set = self.add_set.union(other_node.add_set)
        self.remove_set = self.remove_set.union(other_node.remove_set)

class GCounter(object):
    """Grow-only counter"""
    def __init__(self, n, nodeId):
        self.nodeId = nodeId
        self.n = n
        self.counter = np.array([0] * n)
    def inc(self):
        self.counter[self.nodeId] += 1

    def query(self):
        return sum(self.counter)

    def merge(self, b):
        """b is a counter from another node"""
        self.counter = np.maximum(self.counter, b)

class VectorClock(GCounter):
    def query(self):
        return self.counter[self.nodeId]

class PNCounter(object):
    """Positive negative counter"""
    def __init__(self, n, nodeId):
        """n - number of nodes"""
        self.nodeId = nodeId
        self.n = n
        self.pos_counter = np.array([0] * n)
        self.neg_counter = np.array([0] * n)

    def query(self):
        return sum(self.pos_counter + self.neg_counter)
    def inc(self):
        self.pos_counter[self.nodeId] += 1
    def dec(self):
        self.neg_counter[self.nodeId] -= 1
    def merge(self, b):
        self.pos_counter = np.maximum(self.pos_counter, b.pos_counter)
        self.neg_counter = np.minimum(self.neg_counter, b.neg_counter)

class ListNode(object):
    def __init__(self, val=None, next=None, deleted=False):
        self.val = val
        self.next = next
        self.deleted = deleted

    def display(self):
        output = []
        pointer = self
        while pointer is not None:
            if not pointer.deleted:
                output.append(pointer.val)
            pointer = pointer.next
        return str(output)

    def equal(self, other_node):
        return self.val == other_node.val and self.deleted == other_node.deleted


    def deepcopy(self):
        output = ListNode(0, None, False)
        self_pt = self
        out_pt = output
        while self_pt is not None:
            out_pt.next = ListNode(self_pt.val, self_pt.next, self_pt.deleted)
            self_pt = self_pt.next
            out_pt = out_pt.next
        return output.next

class ItemList(object):
    """
    An ordered list of items (can be String or Integers).
    Each String has a priority rank, the priority rank can be modified.
    Only support for unique values for now. Inspired by RGA
    """
    def __init__(self):
        self.items = None

    def add(self, position, item):
        """
        Add item to the position of local copy item list.
        Position is after item position.
        """
        if self.items is None:
            assert position == 0
            self.items = item
        else:
            head = self.items
            idx = 0
            while idx < position - 1 or head.deleted:
                if not head.deleted:
                    idx += 1
                head = head.next
            after = head.next
            head.next = item
            item.next = after

    def lookup(self, item):
        """Return the position of wish in local copy."""
        head = self.items
        position = 0
        while head is not None:
            if head.equal(item):
                return position
            head = head.next
            position += 1
        raise Exception("no such item in the list!")

    def remove(self, position):
        """
        Do NOT delete the node form itemlist.
        Just change node.delete to True
        """
        head = self.items
        while position > 0 or head.deleted:
            if not head.deleted:
                position -= 1
            head = head.next
        head.deleted = True

    def merge(self, itemlist_copy):
        """
        Synchronize (update) local itemList with another node's item list.
        Return merged itemList
        """
        head1 = self.items
        head2 = itemlist_copy.items
        merged = ListNode(0)
        pointer = merged
        while head1 is not None and head2 is not None:
            if head1.equal(head2):
                pointer.next = head1.deepcopy()
            elif head1.val == head2.val:
                if head2.deleted:
                    head1.deleted = True
                pointer.next = head1.deepcopy()
            else:
                smaller = head1.deepcopy() if head1.val < head2.val else head2.deepcopy()
                bigger = head1.deepcopy() if head1.val > head2.val else head2.deepcopy()
                pointer.next = smaller
                pointer = pointer.next
                pointer.next = bigger
            head1 = head1.next
            head2 = head2.next
            pointer = pointer.next

        # check the rest
        if head2 is not None:
            pointer.next = head2.deepcopy()

        self.items = merged.next
        itemlist_copy.items = merged.next.deepcopy()
        return merged.next

class IntList(ItemList):
    """
    Roughly same object as above, except item here should be integer,
    Support for max, min, ave
    """
    def __init__(self):
        super().__init__()
        self.minimum = sys.maxsize
        self.maximum = - sys.maxsize
        self.summation = 0
        self.n = 0

    def add(self, position, item):
        val = item.val
        self.n += 1
        self.maximum = max(self.maximum, val)
        self.minimum = min(self.minimum, val)
        self.summation += val

        if self.items is None:
            assert position == 0
            self.items = item
        else:
            head = self.items
            idx = 0
            while idx < position - 1 or head.deleted:
                if not head.deleted:
                    idx += 1
                head = head.next
            after = head.next
            head.next = item
            item.next = after

    def remove(self, position):
        head = self.items
        while position > 0 or head.deleted:
            if not head.deleted:
                position -= 1
            head = head.next
        head.deleted = True

        self.n -= 1
        self.summation -= head.val

    def merge(self, itemlist_copy):
        pass

    def list_ave(self):
        return self.summation / float(self.n) if self.n != 0 else 0

    def list_max(self):
        return self.minimum

    def list_min(self):
        return self.maximum