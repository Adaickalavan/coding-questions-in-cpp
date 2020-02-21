#include <iostream>
#include <map>
#include <unordered_map>

using std::cout;
using std::unordered_map;
using std::multimap;

template<class Elem, class Pri, class Comp>
class MutatablePriorityQueue{
    public:   
        bool empty();
        size_t size();
        void push(Elem elem, Pri pri);
        void pop();
        Elem top();
    private:
        Comp comp;
        unordered_map<Elem,Pri> elementSet; // set of elements in priority queue
        multimap<Pri, Elem, Comp> pq; // priority queue structure
};

template<class Elem, class Pri, class Comp>
size_t MutatablePriorityQueue<Elem,Pri,Comp>::size(){
    return elementSet.size();
}

template<class Elem, class Pri, class Comp>
bool MutatablePriorityQueue<Elem,Pri,Comp>::empty(){
    while(pq.size() > 0){
        typename multimap<Pri,Elem>::iterator itPQ = pq.begin();
        Elem elem = itPQ->second;
        if (elementSet.find(elem) != elementSet.end()){
            return false;
        } else {
            pq.erase(itPQ);
        }
    }
    return true;
}

template<class Elem, class Pri, class Comp>
void MutatablePriorityQueue<Elem,Pri,Comp>::push(Elem elem, Pri pri){
    typename unordered_map<Elem,Pri>::iterator it = elementSet.find(elem);
    if(it != elementSet.end()){
        if(comp(pri, it->second)){
            it->second = pri;
            pq.insert(std::pair<Pri,Elem>(pri,elem));
        }
    } else {
        elementSet.insert(std::pair<Elem,Pri>(elem,pri));
        pq.insert(std::pair<Pri,Elem>(pri,elem));
    }
}    

template<class Elem, class Pri, class Comp>
void MutatablePriorityQueue<Elem,Pri,Comp>::pop(){
    if (!empty()){
        typename multimap<Pri,Elem>::iterator itPQ = pq.begin();
        Elem elem = itPQ->second;
        pq.erase(itPQ);

        typename unordered_map<Elem,Pri>::iterator itSet = elementSet.find(elem);
        elementSet.erase(itSet);
    }
}

template<class Elem, class Pri, class Comp>
Elem MutatablePriorityQueue<Elem,Pri,Comp>::top(){
    if (!empty()){
        typename multimap<Pri,Elem>::iterator itPQ = pq.begin();
        return itPQ->second;
    }
    return Elem{};
}

typedef int Pri;

// Compares whether the first element should be placed ahead of the second
class Comparator{ 
    public: 
        bool operator() (const Pri& p1, const Pri& p2) const { 
            return p1 > p2; 
        } 
}; 

int main(){
    // Testcase 1
    MutatablePriorityQueue<char, int, Comparator> mpq;

    mpq.push('a',1);
    cout << mpq.top() << "\n";
    mpq.push('b',4);
    cout << mpq.top() << "\n";
    mpq.push('a',2);
    cout << mpq.top() << "\n";
    mpq.push('a',2);
    mpq.push('a',3);
    mpq.push('a',5);
    cout << mpq.size() << "\n";
    cout << mpq.top() << "\n";
    mpq.pop();
    cout << mpq.top() << "\n";
    mpq.pop();
    cout << mpq.size() << "\n";
    cout << mpq.top() << "\n";
    cout << std::boolalpha;
    cout << "Priority queue is empty = " << mpq.empty() << "\n";

    return 0;
}