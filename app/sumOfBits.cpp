#include <iostream>
#include <map>

using std::map;
using std::array;
using std::cout;
using std::endl;

class SumOfBits{
    public:
        SumOfBits();
        int count(int input);
    private:
        map<int,int> table{{0,0},{1,1},{2,1},{3,2},
                           {4,1},{5,2},{6,2},{7,3}};
};

SumOfBits::SumOfBits(){
}

int SumOfBits::count(int input){
    if (input == 0){
        return 0;
    }
    int nibble = input & 0x3;
    int sum = table.find(nibble)->second;
    input = input >> 2;
    return sum + count(input);
}

int main (void){
    array<int,5> intArray = {1,5,15,19,22};
    SumOfBits sum;
    for (int it : intArray){
        std::cout << sum.count(it) << ", ";
    }
}

