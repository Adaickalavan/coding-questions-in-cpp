#include <iostream>
#include <queue>

template<class T>
struct node{
  T key;
  node* left;
  node* right;
};

template<class T>
class Btree{
  public:
    Btree();
    void insert(T key);
    void level_print();
  private:
    node<T>* root;
    void insert(T key, node<T>* leaf);
    void level_print(::std::queue<node<T>*> &q);
};

template <class T>
Btree<T>::Btree(){
  root = NULL;
}

template<class T>
void Btree<T>::insert(T key){
  if (root == NULL){
    root = new node<T>{.key= key, .left = NULL, .right= NULL};
  } else {
    insert(key, root);
  }
}

template <class T> 
void Btree<T>::insert(T key, node<T>* leaf){
  if (key < leaf->key){
    if(leaf->left !=NULL){
      insert(key, leaf->left);
    } else {
      leaf->left = new node<T>{.key= key, .left = NULL, .right= NULL};
    }
  } else {
    if(leaf->right !=NULL){
      insert(key, leaf->right);
    } else {
      leaf->right = new node<T>{.key= key, .left = NULL, .right= NULL};
    }
  }
}

template<class T>
void Btree<T>::level_print(){
  if (root != NULL){
    ::std::queue<node<T>*> q;
    q.push(root);
	  level_print(q);
  }
}

template<class T>
void Btree<T>::level_print(::std::queue<node<T>*> &q){
  if (q.empty()){
    return;
  }
  size_t sz = q.size();
  while (sz--){ 
    node<T>* leaf = q.front();
    ::std::cout<< leaf->key << " ";

    if (leaf->left != NULL){
      q.push(leaf->left);
    }
    if (leaf->right != NULL){
      q.push(leaf->right);
    } 
    q.pop();
  }
  printf("\n");
  level_print(q);
}

int main(){

	Btree<int> *tree1 = new Btree<int>();
	tree1->insert(10);
  tree1->insert(9);
  tree1->insert(1);
  tree1->insert(3);
  tree1->insert(8);
  tree1->insert(0);
  tree1->level_print();
	
  delete tree1;
  ::std::cout << "\n";

  Btree<char> *tree2 = new Btree<char>();
	tree2->insert('a');
  tree2->insert('c');
  tree2->insert('b');
  tree2->insert('g');
  tree2->insert('e');
  tree2->insert('r');
  tree2->level_print();

	delete tree2;

}