#include <iostream>
using namespace std;

class SinglyLinkedListNode {
    public:
        int data;
        SinglyLinkedListNode *next;

        SinglyLinkedListNode(int node_data) {
            this->data = node_data;
            this->next = nullptr;
        }
};

class SinglyLinkedList {
    public:
        SinglyLinkedListNode *head;
        SinglyLinkedListNode *tail;

        SinglyLinkedList() {
            this->head = nullptr;
            this->tail = nullptr;
        }
};

SinglyLinkedListNode* insertNodeAtHead(SinglyLinkedListNode *llist, int data) {
    SinglyLinkedListNode *node = new SinglyLinkedListNode(data);
    node->next = llist;
    return node;
}

void printList(SinglyLinkedListNode *node) {
    while(node) {
        printf("%d\n", node->data);
        node = node->next;
    }
}

int main() {
    SinglyLinkedList *list = new SinglyLinkedList();

    for(int i = 0; i <= 10; i++) {
        SinglyLinkedListNode *head = insertNodeAtHead(list->head, i);
        list->head = head;
    }

    printList(list->head);
}