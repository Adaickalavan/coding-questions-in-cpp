/**
Question 3: 
Find the kth largest element in a stream. Given an infinite stream of integers, find the
kth largest element at any point of time. An example is as follows:

Input:
stream[] = {10, 20, 11, 70, 50, 40, 100, 5, ...}
k = 3

Output:
-, -, 10, 11, 20, 40, 50, 50, ...

Remarks:
1) The solution is written in C++.
2) A priority queue is used to solve the problem.
3) The input stream is represented by a for loop iterating over an input array.

*/

#include <iostream>
#include <queue>

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::priority_queue;

// Compares two int values for the priority queue
class Comparator{ 
    public: 
        bool operator() (const int& p1, const int& p2) const 
        { 
            return p1 > p2; 
        } 
};

class KthLargest{
    public:
        KthLargest(int k);
        void insert(int elem);
        string get();
    private:
        priority_queue<int, vector<int>, Comparator> minHeap;
        size_t size;
};

KthLargest::KthLargest(int k){
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
    cout << endl;

    return 0;
}