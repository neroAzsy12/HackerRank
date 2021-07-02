// javac PrintLinkedList.java
public class PrintLinkedList {
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
        SinglyLinkedListNode head;
        SinglyLinkedListNode tail;

        public SinglyLinkedList() {
            this.head = null;
            this.tail = null;
        }

        public void insertNode(int val) {
            if(this.head == null) {
                SinglyLinkedListNode node = new SinglyLinkedListNode(val);
                this.head = node;
                this.tail = node;
            } else {
                this.tail.next = new SinglyLinkedListNode(val);
                this.tail = this.tail.next; 
            }
        }
    }
    // the function that you need to solve for this question
    public static void printLinkedList(SinglyLinkedListNode head) {
        while(head != null) {
            System.out.println(head.data);
            head = head.next;
        }
    }

    public static void main(String[] args) {
        SinglyLinkedList list = new SinglyLinkedList();
        for(int i = 1; i < 11; i++) {
            list.insertNode(i);
        }

        printLinkedList(list.head);
    }

}
