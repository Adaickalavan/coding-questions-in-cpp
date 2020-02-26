#include <iostream>
#include <numeric>
#include <tuple>
#include <vector>

using std::cout;
using std::get;
using std::tuple;
using std::vector;

int sumAll(int a, int d, int n){
    return (n/2.0)*(2*a + (n-1)*d); 
}

int sumRange(const vector<int>& vec, int threshold){
    int sum=0;
    for(int ii : vec){
        if(ii <= threshold){
            sum += ii;
        }
    }
    return sum;
}

int main(){

    // An array of size N-1 contains distinct elements in the range [1,N].
    // Find one the missing integer.
    vector<int> vec1 = {1,2,3,4,5,7};
    int N = vec1.size()+1;
    int vecSum = std::accumulate(vec1.begin(), vec1.end(), 0);
    int arithSum = sumAll(1,1,N);
    cout << "Missing integer = " << arithSum - vecSum <<"\n\n";

    // An array of size N-2 contains distinct elements in the range [1,N].
    // Find the two missing integers.
    vector<int> vec2 = {1,6,2,4,8,7};
    N = vec2.size()+2;
    vecSum = std::accumulate(vec2.begin(), vec2.end(), 0);
    arithSum = sumAll(1,1,N);

    int totalMissingNum = arithSum - vecSum; 
    int aveMissingNum = totalMissingNum/2;
    int lowerVecSum = sumRange(vec2, aveMissingNum);
    int lowerNum = sumAll(1,1,aveMissingNum) - lowerVecSum;
    int upperNum = totalMissingNum - lowerNum;
    cout << "Missing integers = " << lowerNum << ", " << upperNum << "\n";

    return 0;
}