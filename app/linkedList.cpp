#include <iostream>
#include <map>

using std::cout;
using std::endl;

struct node{
    int value;
    node* next;
};

class LinkedList{
    public:
        LinkedList();
        void printer();
        node* insert(int value);
        void del(node* ptr);
        node* reverse();
        void printReverse();
        void sort();
    private:
        node* head;
        node* tail;
        node* reverse(node* cur, node* next);
        void printReverse(node* it);
};

LinkedList::LinkedList(){
    head = NULL;
    tail = NULL;
}

node* LinkedList::insert(int value){
    if (head == NULL){
        head = new node{.value=value, .next=NULL};
        tail = head;
        return tail;
    } else {
        tail->next = new node{.value=value, .next=NULL};
        tail = tail->next;
        return tail;
    }
}

void LinkedList::del(node* ptr){
    if (ptr == tail){
        if(tail == head){
            delete tail;
            tail = NULL;
            head = NULL;
            return;
        }
        node* it;
        for(it = head; it->next != tail; it = it->next){
        }
        it->next = NULL;
        delete tail;
        tail = it;
        return;
    }

    node* next = ptr->next;
    node* nextnext = next->next;
    ptr->value = next->value;
    ptr->next = nextnext;
    delete next;
}

node* LinkedList::reverse(){
    if (head == NULL){
        return NULL;
    } else {
        node* next = head->next;
        head->next = NULL;
        tail = head;
        return reverse(head, next);
    }
}

node* LinkedList::reverse(node* cur, node* next){
    if (next == NULL){
        head = cur;
        return head;
    }
    node* nextnext = next->next;
    next->next = cur;
    return reverse(next, nextnext);
}

void LinkedList::printReverse(){
    if (head == NULL){
        return;
    }
    printReverse(head);
    cout << "\n"; 
}

void LinkedList::printReverse(node* it){
    if (it->next != NULL){
        printReverse(it->next);
    }
    cout << it->value << ", "; 
}

void LinkedList::sort(){
}
//Merge Sort for linked list
// void LinkedList::sort(){
//     if (head == NULL){
//         return;
//     }
//     sort(head,)
// }

void LinkedList::printer(){
    for(node* it = head; it != NULL; it=it->next){
        cout << it->value << ", ";
    }
    cout << endl;
}

int main(void){
    LinkedList list;

    // Insert
    node* ptr1 = list.insert(2);
    list.insert(1);
    list.insert(3);
    node* ptr4 = list.insert(4);
    list.insert(5);
    list.insert(9);
    list.insert(7);
    node* ptr8 = list.insert(10);
    list.printer();

    // Delete middle node
    list.del(ptr4);
    list.printer();

    //Delete last node
    list.del(ptr8);
    list.printer();

    // Reverse
    list.reverse();
    list.printer();

    // Print reverse
    list.printReverse();

}