#include <iostream>
#include <string>
#include <vector>
#include <array>

using std::cout;
using std::endl;
using std::string;
using std::vector;
using std::array;

class Pattern {
    public:
        void search(string txt, string pat);
        template<class T>
        void print(vector<T> vec);
};

void Pattern::search(string txt, string pat){
    int txtLen =  txt.length();
    int patLen =  pat.length();
    vector<vector<int>> path(2);
    path[0] = vector<int>(patLen+1);
    path[1] = vector<int>(patLen+1);

    int curRow = 0;
    int prev = 0;
    int maxMatch = 0;
    for(int ii=0; ii<txtLen ;ii++){
        for(int jj=1; jj<patLen+1; jj++){
            if(pat[jj-1] == txt[ii]){
                prev = path[1-curRow][jj-1];
                path[curRow][jj] = prev+1;
                if (prev+1 == patLen){
                    cout << "Found start indices: "<< ii-patLen+1 << endl;
                }
            } else{
                path[curRow][jj] = 0;
            }
        }
        print<int>(path[curRow]);
        curRow = 1 - curRow;
    }
}

template<class T>
void Pattern::print(vector<T> vec){
    for(auto ii : vec){
        cout << ii << " ";
    }
    cout << endl;
}

int main(){
    string txt = "AAAAABAACAADAABAABA";
    string pat = "AAAA";
    Pattern pattern;
    pattern.search(txt,pat);
}