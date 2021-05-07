# citation: https://hal.inria.fr/inria-00108523/document
class Vertex(object):
    def __init__(self):
        self.value = None
        self.next_vertices_add = set()


class StartVertex(Vertex):
    def __init__(self):
        self.value = 'start'
        self.next_vertices_add = set()


class EndVertex(Vertex):
    def __init__(self):
        self.value = 'end'
        self.next_vertices_add = None


class AddRemovePartialOrder(object):
    """Maintain partial order via graph structure"""
    def __init__(self):
        self.start = StartVertex()
        self.end = EndVertex()
        self.vertices_add = set({self.start, self.end})
        self.vertices_remove = set()
        self.edges = set({(self.start, self.end)})

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
        if v is self.end or u is self.start:
            return True

        # for edge in self.edges: # should be a graph search here!
        #     if edge[0] == u and edge[1] == v:
        #         return True
        output = False
        for next in u.next_vertices_add:
            if next not in self.vertices_remove:
                if next == v:
                    return True
                else:
                    output = self.before(next, v)
        return output

    def add_between(self, u, v, w) -> None:
        """
        update function, add element v between u and w
        """
        assert self.before(u, w) and u is not self.end and w is not self.start
        self.vertices_add.add(v)
        u.next_vertices_add.add(v)
        v.next_vertices_add.add(w)
        self.edges.add((u, v))
        self.edges.add((v, w))

    def remove(self, v) -> None:
        """
        update function
        :param v:
        :return:
        """
        assert self.lookup(v) and v is not self.start and v is not self.end
        self.vertices_remove.add(v)

    def merge(self, p_order) -> None:
        """
        Merge self partial order with another partial order.
        :param p_order: another AddRemovePartialOrder object from another node
        :return:
        """
        self.vertices_add = self.vertices_add.union(p_order.vertices_add)
        self.vertices_remove = self.vertices_remove.union(p_order.vertices_remove)
        self.edges = self.edges.union(p_order.edges)

