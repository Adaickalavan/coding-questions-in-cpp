#include <iostream>
#include <stack>
#include <set>
#include <map>

using std::cout;
using std::endl;
using std::string;
using std::stack;
using std::set;
using std::map;

struct Result{
    int end;
    int start;
};

class Substring{
    public:
        Substring();
        void find(string str, Result &result);
    private:
        map<char,char> bracketsMap{{')','('},{'}','{'},{']','['}};
        set<char> bracketsSet{'(',')','{','}','[',']'};
};

Substring::Substring(){
}

void Substring::find(string str, Result &result){
    stack<int> st;
    int endLongest = 0;
    int startLongest = 0;

    for(int ii=0; ii<str.length(); ii++){
        if (str[ii] == '('){
            st.push(ii);    
        } else { // closing bracket ')'
            if (!st.empty()){
                int startCurrent = st.top();
                st.pop();
                int endCurrent = ii;
                if(endCurrent-startCurrent > endLongest-startLongest){
                    endLongest = endCurrent;
                    startLongest = startCurrent;
                }
            }
        }
    }

    result.start = startLongest;
    result.end = endLongest;
}

int main(){
    string strList[] = {"", "(()", ")()())", "())((())", "())(()"};
    Substring substr;  
    Result result; 
    for(string str :strList){
        substr.find(str,result);
        cout<< "Longest valid parentheses of "<< str << " is "<<
            str.substr(result.start, result.end-result.start+1) << ", from " <<
            result.start << " to " << result.end << endl;
    }

}