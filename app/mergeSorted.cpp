#include <iostream>
#include <vector>

using std::cout;
using std::endl;
using std::vector;


void sort(vector<int>::iterator arr1Cur, vector<int>::iterator arr1End, 
    vector<int>::iterator arr2Cur, vector<int>::iterator arr2End, 
    vector<int>::iterator outputCur){

    if(arr1Cur == arr1End && arr2Cur == arr2End){
        return;
    }
    if(arr1Cur == arr1End && arr2Cur != arr2End){
        for(vector<int>::iterator ii = arr2Cur; ii != arr2End; ii++){
            *outputCur = *ii;
            outputCur ++;
        }
        return;
    }
    if(arr1Cur != arr1End && arr2Cur == arr2End){
        for(vector<int>::iterator ii = arr1Cur; ii != arr1End; ii++){
            *outputCur = *ii;
            outputCur ++;
        }
        return;
    }
    if(*arr1Cur < *arr2Cur){
        *outputCur = *arr1Cur;
        outputCur ++;
        arr1Cur ++;
        return sort(arr1Cur, arr1End, 
            arr2Cur, arr2End, 
            outputCur);
    }
    *outputCur = *arr2Cur;
    outputCur ++;
    arr2Cur ++;
    return sort(arr1Cur, arr1End, 
        arr2Cur, arr2End, 
        outputCur);
}

void printer(vector<int>::iterator start, vector<int>::iterator end){
    for(vector<int>::iterator ii = start; ii != end ; ++ii){
        cout << *ii << " ";
    }
    cout << endl;
}

int main(){
    vector<int> arr1 = {1,3,6,8,9};
    // vector<int> arr1 = {};
    vector<int> arr2 = {1,2,4,5};
    vector<int> output(arr1.size()+arr2.size());
    sort(arr1.begin(), arr1.end(),
        arr2.begin(), arr2.end(),
        output.begin());
    printer(output.begin(),output.end());
}