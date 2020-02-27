#include <iostream>
#include <map>

using std::map;
using std::array;
using std::cout;
using std::endl;

class SumOfBits{
    public:
        SumOfBits();
        unsigned int count(unsigned int input);
    private:
        map<unsigned int,unsigned int> table{{0,0},{1,1},{2,1},{3,2},
                                            {4,1},{5,2},{6,2},{7,3}};
};

SumOfBits::SumOfBits(){
}

unsigned int SumOfBits::count(unsigned int input){
    if (input == 0){
        return 0;
    }
    unsigned int nibble = input & 0x3;
    map<unsigned int,unsigned int>::iterator it = table.find(nibble);
    unsigned int sum = it->second;
    return sum + count(input >> 2);
}

int main (void){
    array<unsigned int,5> intArray = {1,5,15,19,22}; // Num of bits = {1, 2, 4, 3, 3}
    SumOfBits sum;
    for (unsigned int it : intArray){
        std::cout << sum.count(it) << ", ";
    }
    std::cout << "\n";
}

