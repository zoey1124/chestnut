import numpy as np


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
        return sum(self.pos_counter + self.neg_counter)
    def inc(self):
        self.pos_counter[self.nodeId] += 1
    def dec(self):
        self.neg_counter[self.nodeId] -= 1
    def merge(self, b):
        self.pos_counter = np.maximum(self.pos_counter, b.pos_counter)
        self.neg_counter = np.minimum(self.neg_counter, b.neg_counter)
