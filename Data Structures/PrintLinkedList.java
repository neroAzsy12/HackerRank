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

        public void insertNode(int val) {
            SinglyLinkedListNode tmp = this;
            
            while(tmp.next != null) {
                tmp = tmp.next;
            }

            tmp.next = new SinglyLinkedListNode(val);
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
        SinglyLinkedListNode head = new SinglyLinkedListNode(0);
        for(int i = 1; i < 11; i++) {
            head.insertNode(i);
        }

        printLinkedList(head);
    }

}
