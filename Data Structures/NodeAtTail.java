public class NodeAtTail {
    static class SinglyLinkedListNode {
        int data;
        SinglyLinkedListNode next;
        
        public SinglyLinkedListNode(int data) {
            this.data = data;
            this.next = null;
        }

        public SinglyLinkedListNode(int data, SinglyLinkedListNode next) {
            this.data = data;
            this.next = next; 
        }
    }

    static class SinglyLinkedList {
        public SinglyLinkedListNode head;

        public SinglyLinkedList() {
            this.head = null;
        }
    }

    // used for testing the linked list
    public static void printLinkedList(SinglyLinkedListNode head) {
        while(head != null) {
            System.out.println(head.data);
            head = head.next;
        }
    }

    // the function that you need to solve for this question
    public static SinglyLinkedListNode insertNodeAtTail(SinglyLinkedListNode head, int data) {
        if(head == null) {
            head = new SinglyLinkedListNode(data);
            return head;
        }
        
        SinglyLinkedListNode tmp = head;
        while(tmp.next != null) {
            tmp = tmp.next;
        }
        
        tmp.next = new SinglyLinkedListNode(data);
        return head;

    }

    // To test if the function works
    public static void main(String[] args) {
        SinglyLinkedList list = new SinglyLinkedList();

        for(int i = 0; i < 11; i++) {
            SinglyLinkedListNode head = insertNodeAtTail(list.head, i);
            list.head = head;
        }

        printLinkedList(list.head);
    }

}