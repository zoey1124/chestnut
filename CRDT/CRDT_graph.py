# citation: https://hal.inria.fr/inria-00108523/document
class AddRemovePartialOrder(object):
    """Maintain partial order via graph structure"""
    def __init__(self):
        self.vertices_add = set({"start", "end"})
        self.vertices_remove = set()
        self.edges = set({("start", "end")})

    def lookup(self, v) -> bool:
        """
        query function, check whether vertex v is in the doc
        """
        return v in self.vertices_add and v not in self.vertices_remove

    def before(self, u, v) -> bool:
        """
        Return True if vertex u is before vertex v
        """
        assert self.lookup(u) and self.lookup(v)
        for edge in self.edges:
            if edge[0] == u and edge[1] == v:
                return True
        return False

    def add_between(self, u, v, w) -> None:
        """
        update function, add element v between u and w
        """
        assert self.before(u, w)
        self.vertices_add.add(v)
        self.edges.add((u, v), (v, w))

    def remove(self, v) -> None:
        """
        update function
        :param v:
        :return:
        """
        assert self.lookup(v) and v != "start" and v != "end"
        self.vertices_remove.add(v)

    def merge(self, p_order) -> None:
        """
        Merge self partial order with another partial order.
        :param p_order: another AddRemovePartialOrder object from another node
        :return:
        """
        self.vertices_add = self.vertices_add.union(p_order.vertices_add)
        self.vertices_remove = self.vertices_remove.union(p_order.vertices_remove)

class RGA(object):
    """
    Replicated Growable Array. Implemented as a linked List
    """
    def __init(self):
        pass
