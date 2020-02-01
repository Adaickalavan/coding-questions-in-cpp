/**
Question 3: 
Find the kth largest element in a stream. Given an infinite stream of integers, 
find the kth largest element at any point of time. An example is as follows:

Input:
stream[] = {10, 20, 11, 70, 50, 40, 100, 5, ...}
k = 3

Output:
_, _, 10, 11, 20, 40, 50, 50, ...

Remarks:
1) The solution is written in C++.
2) A priority queue is used to solve the problem.

*/

#include <iostream>
#include <queue>
#include <exception>

using std::cout;
using std::cin;
using std::string;
using std::vector;
using std::priority_queue;
using std::exception;

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
        int size;
};

KthLargest::KthLargest(int k){
    size = k;
}

// Insert a new element into minHeap.
// Complexity = O(logN).
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
// Complexity = O(1).
string KthLargest::get(){
    if (minHeap.size() < size){
        return "-";
    } else {
        return std::to_string(minHeap.top());
    }
}

int main(){
    string str;
    int k;

    while(true){
        cout << "Enter value of k: ";
        std::getline(cin, str);
        if(str == "exit"){
            return 0;
        }
        try{
            k = std::stoi(str);
            break;
        }
        catch(exception& e){
            cout << "Invalid value: " << e.what() << "\n";
        } 
    }

    KthLargest kth(k);
    int elem;

    while (true){
        cout << "Enter next integer in stream: ";
        std::getline(cin, str);
        if(str == "exit"){
            return 0;
        } 
        try{
            elem = std::stoi(str);
            kth.insert(elem);
            cout << kth.get() << "\n";
        } 
        catch(exception& e){
            cout << "Invalid value: " << e.what() << "\n";
        } 
    }

    return 0;
}