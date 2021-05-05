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

