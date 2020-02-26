#include <iostream>
#include <array>

using std::cout;
using std::endl;
using std::array;
using std::string;

class Reverse{
    public:
        template<class elem, class iter>
        void swap(iter start, iter end);
        template<class iter>
        void printer(iter start, iter end);
    private:
        template<class elem, class iter>
        void _swap(iter start, iter end);
    
};

template<class elem, class iter>
void Reverse::swap(iter start, iter end){
    _swap<elem, iter>(start,end-1);
}

template<class elem, class iter>
void Reverse::_swap(iter start, iter end){
    if (start >= end){
        return;
    }
    elem temp = *start;
    *start = *end;
    *end = temp;
    _swap<elem, iter>(++start,--end);
}   

template<class T>
void Reverse::printer(T start, T end){
    for(T ii = start; ii < end ; ++ii){
        cout << *ii << " ";
    }
    cout << endl;
}

int main(){
    array<int,5> arrOdd{1,2,3,4,5};
    string str = "Hi how are you";
    int N = 345;
    Reverse reverse;
    
    reverse.swap<int, array<int,5>::iterator>(arrOdd.begin(),arrOdd.end());
    reverse.printer<array<int,5>::iterator>(arrOdd.begin(),arrOdd.end());

    reverse.swap<char, string::iterator>(str.begin(),str.end());
    reverse.printer<string::iterator>(str.begin(),str.end());

    reverse.swap<char, string::iterator>(str.begin(),str.end());
    reverse.printer<string::iterator>(str.begin(),str.end());

}
