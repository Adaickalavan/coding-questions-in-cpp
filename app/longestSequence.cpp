#include <iostream>
#include <vector>
#include <algorithm>

using std::cout;
using std::endl;
using std::string;
using std::vector;

class Sequence{
    public:
        void find(string str1, string str2);
        template<class T>
        void print(vector<T>);
};

void Sequence::find(string str1, string str2){
    const int str1Len = str1.length();
    const int str2Len = str2.length();
    vector<vector<int>> path(2);
    path[0] = vector<int>(str2Len+1, 0);
    path[1] = vector<int>(str2Len+1, 0);
    int maxCount = 0;

    int curRow = 0;
    for(int ii=0; ii<str1Len; ii++){
        for(int jj=1; jj<str2Len+1; jj++){
            if(str2[jj-1] == str1[ii]){
                int prev = path[1-curRow][jj-1];
                path[curRow][jj] = prev + 1;
                if (prev+1 > maxCount){
                    maxCount = prev+1;
                }
            } else {
                path[curRow][jj] = std::max(path[1-curRow][jj], path[curRow][jj-1]);
            }
        }
        // print<int>(path[curRow]);
        curRow = 1-curRow;
    }

    cout << "Max elements: " << maxCount << endl;
}

template<class T>
void Sequence::print(vector<T> vec){
    for(auto ii : vec){
        cout << ii << " ";
    }
    cout << endl;
}

int main(void){
    string str1 = "abcdefghijklmnopqrst";
    string str2 = "abcd3ekl3abfgs";
    Sequence seq;
    seq.find(str1, str2);
}