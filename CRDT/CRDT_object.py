import numpy as np

class GSet(object):
    """An grow-only set object"""
    def __init__(self):
        self.gset = set()

    def add(self, elm):
        self.gset.add(elm)

    def query(self):
        return self.gset

    def merge(self, b):
        self.gset = self.gset.union(b)


class PNSet(object):
    """A set allows for add and remove. But cannot readd the element after deletion."""
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
        self.add_set.union(other_node.add_set)
        self.remove_set.union(other_node.remove_set)


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

class PNCounter(object):
    """Positive negative counter"""
    def __init__(self, n, nodeId):
        """n - number of nodes"""
        self.nodeId = nodeId
        self.n = n
        self.pos_counter = np.array([0] * n)
        self.neg_counter = np.array([0] * n)

    def query(self):
        return sum(self.pos_counter - self.neg_counter)
    def inc(self):
        self.pos_counter[self.nodeId] += 1
    def dec(self):
        self.neg_counter[self.nodeId] -= 1
    def merge(self, b):
        self.pos_counter = np.maximum(self.pos_counter, b.pos_counter)
        self.neg_counter = np.maximum(self.neg_counter, b.neg_counter)

"""
What if I want to use CRDT to represent a list o integers?
Then I can calculate the min, max, average!
Also, figure out how to use transaction to test!
"""
class PNList(object):
    """
    CRDT list with fixed length
    n: number of nodes
    k: length of the list
    """
    def __init__(self, n, k, nodeId):
        self.nodeId = nodeId
        self.n = n
        self.k = k
        self.positive_list = np.zeros((n, k))
        self.negative_list = np.zeros((n, k))
        self.list_max = 0
        self.list_min = 0
        self.ave = 0

    def query(self):
        pass

    def merge(self):
        pass

    def list_ave(self):
        return self.ave

    def list_max(self):
        return self.list_max

    def list_min(self):
        return self.list_min