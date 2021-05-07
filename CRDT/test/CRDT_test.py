import CRDT.CRDT_sequence as CRDT_sequence
import CRDT.CRDT_set as CRDT_set
import CRDT.CRDT_counter as CRDT_counter
import CRDT.CRDT_graph as CRDT_graph

def test_GSet():
    print("===test Gset===")
    node0 = CRDT_set.GSet()
    node1 = CRDT_set.GSet()
    node0.add(2)
    node1.add(3)
    node1.add(2)
    node1.merge(node0)
    assert node1.gset == {2, 3}
    assert node0.gset == {2}
    node0.merge(node1)
    assert node0.gset == {2, 3}
    print("Pass")

def test_USet():
    print("===test USet===")
    node0 = CRDT_set.USet()
    node1 = CRDT_set.USet()
    node0.add(2)
    node0.add(3)
    node1.merge(node0)
    assert node1.query() == {2, 3}
    node1.remove(2)
    node1.add(0)
    node0.merge(node1)
    assert node0.query() == {0, 3}
    print("Pass")

def test_PNCounter():
    print("===test PNCounter===")
    node0 = CRDT_counter.PNCounter(2, 0)
    node1 = CRDT_counter.PNCounter(2, 1)
    node0.inc()
    node1.dec()
    node0.inc()
    node1.inc()
    node1.inc()
    node0.merge(node1)
    node1.merge(node0)
    assert node0.query() == node1.query() and node0.query() == 3
    print("Pass")

def test_ItemList():
    print("===test ItemList add remove lookup===")
    node0 = CRDT_sequence.ItemList()
    node0.add(0, CRDT_sequence.ListNode("TV"))
    assert node0.items.display() == "['TV']"
    item = CRDT_sequence.ListNode("TV")
    assert node0.lookup(item) == 0
    node0.add(1, CRDT_sequence.ListNode("Venice"))
    assert node0.items.display() == "['TV', 'Venice']"
    node0.add(2, CRDT_sequence.ListNode("Laptop"))
    assert node0.items.display() == "['TV', 'Venice', 'Laptop']"
    node0.remove(1)
    assert node0.items.display() == "['TV', 'Laptop']"
    node0.remove(0)
    assert node0.items.display() == "['Laptop']"
    node0.add(1, CRDT_sequence.ListNode("Ski"))
    assert node0.items.display() == "['Laptop', 'Ski']"
    node0.add(1, CRDT_sequence.ListNode("Peace"))
    assert node0.items.display() == "['Laptop', 'Peace', 'Ski']"
    print("Pass")

def test_ItemList2():
    print("===test merge===")
    node0 = CRDT_sequence.ItemList()
    node0.add(0, CRDT_sequence.ListNode("TV"))
    node0.add(1, CRDT_sequence.ListNode("Venice"))
    node0.add(2, CRDT_sequence.ListNode("Laptop"))

    node1 = CRDT_sequence.ItemList()
    node1.merge(node0)
    assert node1.items.display() == "['TV', 'Venice', 'Laptop']"

    node0.add(2, CRDT_sequence.ListNode("Book"))
    node0.remove(1)
    node1.add(2, CRDT_sequence.ListNode("Ski"))
    assert node0.items.display() == "['TV', 'Book', 'Laptop']"
    assert node1.items.display() == "['TV', 'Venice', 'Ski', 'Laptop']"
    node0.merge(node1)
    assert node0.items.display() == "['TV', 'Book', 'Ski', 'Laptop']"

    node0.add(0, CRDT_sequence.ListNode("iPhone"))
    node1.add(0, CRDT_sequence.ListNode("War"))
    assert node0.items.display() == "['TV', 'iPhone', 'Book', 'Ski', 'Laptop']"
    assert node1.items.display() == "['TV', 'War', 'Book', 'Ski', 'Laptop']"
    node0.merge(node1)
    assert node0.items.display() == "['TV', 'War', 'iPhone', 'Book', 'Ski', 'Laptop']"
    assert node1.items.display() == "['TV', 'War', 'iPhone', 'Book', 'Ski', 'Laptop']"
    print("Pass")



if __name__ == "__main__":
    test_GSet()
    test_PNCounter()
    test_ItemList()
    test_ItemList2()
    test_USet()