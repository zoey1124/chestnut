"""Identifier tree structure to represent sequence in continuous space."""


class Element(object):
    def __init__(self):
        self.value = None
        self.id = None


class identifier(object):
    def __init__(self):
        pass

    def before(self, id2):
        """Return True if this id is before id2"""
        return True


class TreeSequence(object):
    def __init__(self):
        self.s = set()

    def lookup(self, e):
        """Return true if element e is in the sequence."""
        return e in self

    def decompose(self, node):
        return node.value, node.id

    def before(self, node):
        pass

    def addBetween(self, before, after, e):
        pass

    def remove(self, e):
        pass
