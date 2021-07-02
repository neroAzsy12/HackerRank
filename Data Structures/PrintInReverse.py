class SinglyLinkedListNode:
    def __init__(self, data):
        self.data = data    # Assign data
        self.next = None    # Initialize next to null

class SinglyLinkedList:
    def __init__(self):
        self.head = None
        self.tail = None
    
    def insertNode(self, data):
        if self.head == None:
            node = SinglyLinkedListNode(data)
            self.head = node
            self.tail = node
        else:
            self.tail.next = SinglyLinkedListNode(data)
            self.tail = self.tail.next

# function that is required to be solved
def reversePrint(linkedList):
    if linkedList.next != None:
        reversePrint(linkedList.next)
    print(linkedList.data)


linkedList = SinglyLinkedList()

for i in range(1, 10, 1):
    linkedList.insertNode(i)

reversePrint(linkedList.head)