class Integer_Singly_Linked_List:
    def __init__(self, data):
        self.data = data    # Assign data
        self.next = None    # Initialize next to null

# function that is required to be solved
def reversePrint(linkedList):
    if linkedList.next != None:
        reversePrint(linkedList.next)
    print(linkedList.data)

# for testing to make sure the function works
def insertNode(head, data):
    if head == None:
        head = Integer_Singly_Linked_List(data);
        return head
    
    tmp = head
    while tmp.next != None:
        tmp = tmp.next
    
    tmp.next = Integer_Singly_Linked_List(data)
    return head

l1 = Integer_Singly_Linked_List(0)

for i in range(1, 10, 1):
    l1 = insertNode(l1, i)

reversePrint(l1)