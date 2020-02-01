#include <iostream>
#include <array>

using std::cout;
using std::endl;
using std::array;


void sort(int* arr1Cur, int* arr1End, 
    int* arr2Cur, int* arr2End, 
    int* outputCur){

    if(arr1Cur == arr1End && arr2Cur == arr2End){
        return;
    }
    if(arr1Cur == arr1End && arr2Cur != arr2End){
        for(int* ii = arr2Cur; ii != arr2End; ii++){
            *outputCur = *ii;
            outputCur += 1;
        }
        return;
    }
    if(arr1Cur != arr1End && arr2Cur == arr2End){
        for(int* ii = arr1Cur; ii != arr1End; ii++){
            *outputCur = *ii;
            outputCur += 1;
        }
        return;
    }
    if(*arr1Cur < *arr2Cur){
        *outputCur = *arr1Cur;
        outputCur += 1;
        arr1Cur += 1;
        return sort(arr1Cur, arr1End, 
            arr2Cur, arr2End, 
            outputCur);
    }
    *outputCur = *arr2Cur;
    outputCur += 1;
    arr2Cur += 1;
    return sort(arr1Cur, arr1End, 
        arr2Cur, arr2End, 
        outputCur);
}

void printer(int* start, int* end){
    for(int* ii = start; ii != end ; ++ii){
        cout << *ii << " ";
    }
    cout << endl;
}

int main(){
    array<int,5> arr1 = {1,3,6,8,9};
    // array<int,0> arr1 = {};
    array<int,4> arr2 = {1,2,4,5};
    array<int,9> output;
    sort(arr1.begin(), arr1.end(),
        arr2.begin(), arr2.end(),
        output.begin());
    printer(output.begin(),output.end());
}