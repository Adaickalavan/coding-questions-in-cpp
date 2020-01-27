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
        void sort();
    private:
        node* head{NULL};
        node* tail{NULL};
        node* reverse(node* cur, node* next);
};

LinkedList::LinkedList(){
}

node* LinkedList::insert(int value){
    if (head == NULL){
        head = new node{.value=value, .next=NULL};
        tail = head;
        return head;
    } else {
        tail->next = new node{.value=value, .next=NULL};
        tail = tail->next;
        return tail;
    }
}

void LinkedList::del(node* ptr){
    if (ptr == tail){
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

void LinkedList::sort(){

}

void LinkedList::printer(){
    for(node* it = head; it != NULL; it=it->next){
        cout << it->value << ", ";
    }
    cout << endl;
}

int main(void){
    LinkedList list;

    // Insert
    list.insert(1);
    list.insert(2);
    list.insert(3);
    node* ptr4 = list.insert(4);
    list.insert(5);
    list.insert(9);
    list.insert(7);
    list.insert(10);
    list.printer();
    
    // Reverse
    list.reverse();
    list.printer();

    // Delete
    list.del(ptr4);
    list.printer();

    // Sort
    list.sort();
    list.printer();
}