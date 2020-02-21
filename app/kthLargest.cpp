#include <iostream>
#include <queue>

using std::cout;
using std::priority_queue;
using std::string;
using std::vector;

// Compares two int values for the priority queue
class Comparator{ 
    public: 
        bool operator() (const int& p1, const int& p2) const { 
            return p1 > p2; 
        } 
};

class KthLargest{
    public:
        KthLargest(size_t k);
        void insert(int elem);
        string get();
    private:
        priority_queue<int, vector<int>, Comparator> minHeap;
        size_t size;
};

KthLargest::KthLargest(size_t k){
    size = k;
}

// Insert a new element into minHeap.
void KthLargest::insert(int elem){
    if (minHeap.size() < size){
        minHeap.push(elem);
    } else {
        if(elem > minHeap.top()){
            minHeap.pop();
            minHeap.push(elem);
        }
    }
}

// Get kth largest value which is at the root of minHeap.
string KthLargest::get(){
    if (minHeap.size() < size){
        return "-";
    } else {
        return std::to_string(minHeap.top());
    }
}

int main(){
    KthLargest kth(3);
    int stream[] = {10, 20, 11, 70, 50, 40, 100, 5};
    for(int ii : stream){
        kth.insert(ii);
        cout << kth.get() << ", ";
    }
    cout << "\n";

    return 0;
}