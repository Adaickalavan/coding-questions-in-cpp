#include <iostream>
#include <queue>

using std::cout;
using std::endl;
using std::vector;
using std::priority_queue;

class Point{
    public:
        int value;
        float key;
        Point(int value, float key);
};

Point::Point(int _value, float _key){
    value = _value;
    key = _key;
}

// To compare two points 
class MyComparator 
{ 
    public: 
        bool operator() (const Point& p1, const Point& p2) const 
        { 
            return p1.key > p2.key; 
        } 
}; 

int main(void){
    priority_queue<Point, vector<Point>, MyComparator> myQ ;//= {Point(8,6),Point(3,10)};
    myQ.push(Point(1,4));
    myQ.push(Point(3,6));
    myQ.push(Point(2,5));
    while(myQ.empty() == false){
        cout << "(" << myQ.top().key << " " << myQ.top().value << ")" << endl;
        myQ.pop();
    }

    const int& x = 666;
    cout << x << endl;

}