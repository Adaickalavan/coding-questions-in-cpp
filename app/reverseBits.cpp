#include <iostream>

using std::cout;

class Reverse {
    public:
        unsigned int reverse(unsigned int num);
    private:
        unsigned int reverse(unsigned int num, unsigned int numReversed, int bits);
};

unsigned int Reverse::reverse(unsigned int num){
    if (num == 0){
        return 0;
    }
    return reverse(num, 0, sizeof(num)*8);
}

unsigned int Reverse::reverse(unsigned int num, unsigned int numReversed, int bits){
    if (num == 0){
        numReversed = numReversed << bits;
        return numReversed;
    }
    // cout << num << "\n";
    numReversed = numReversed << 1;
    numReversed =  numReversed | (num & 1);
    num = num >> 1;
    bits -= 1;
    return reverse(num, numReversed, bits);
}

int main(){
    unsigned int num = 897;
    unsigned int numReversed = 0;
    unsigned int bits = sizeof(num)*8; 
    
    while(num){
        // cout << num << "\n";
        numReversed = numReversed << 1;
        numReversed =  numReversed | (num & 1);
        num = num >> 1;
        bits -= 1; 
    }
    numReversed = numReversed << bits;
    cout << numReversed << "\n";

    Reverse r;
    cout << r.reverse(897) << "\n";

}
