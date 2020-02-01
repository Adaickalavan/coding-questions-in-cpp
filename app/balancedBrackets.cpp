#include <iostream>
#include <map>
#include <stack>
#include <set>

using std::cout;
using std::endl;
using std::map;
using std::pair;
using std::string;
using std::stack;
using std::set;

class Brackets{
    public:
        Brackets();
        bool match(string input);
    private:
        map<char,char> bracketsMap;
        set<char> bracketsSet{'(',')','{','}','[',']'};
        bool match(stack<char> &brackets, string input);
};

Brackets::Brackets(){
    bracketsMap.insert(pair<char,char>(')','('));
    bracketsMap.insert(pair<char,char>('}','{'));
    bracketsMap.insert(pair<char,char>(']','['));
}

bool Brackets::match(string input){
    stack<char> brackets;
    return match(brackets, input);
}

bool Brackets::match(stack<char> &brackets, string input){

    if (brackets.empty() && input.empty()){ // stack is empty and input is empty
        return true;
    }
	if (!brackets.empty() && input.empty()){ // stack in not empty and input is empty
        return false;
    }
    if (bracketsSet.find(input[0]) == bracketsSet.end()){ // found non-bracket character
        input.erase(0,1);
        return match(brackets, input);        
    }
    if (brackets.empty()){
        if (bracketsMap.find(input[0]) == bracketsMap.end()){ // found opening bracket 
            brackets.push(input[0]); 
            input.erase(0,1);
            return match(brackets, input);    
        }
        // found erroneous closing bracket
        return false;
    }
    // if (!brackets.empty()){
        if (bracketsMap.find(input[0]) == bracketsMap.end()){ // found opening bracket
            brackets.push(input[0]);
            input.erase(0,1);
            return match(brackets, input);
        } else {
            if (brackets.top() == bracketsMap.find(input[0])->second){ // found matching closing bracket
                brackets.pop();
                input.erase(0,1);
                return match(brackets, input);
            }
            // found wrong closing bracket
            return false; 
        }
    // }
}

int main(void){
    
    string strList[] = {"", "()", "()[]{}", "{[]}", "[", "}{", "{()", "(]", "([)]",
                        "Hello", "how (are)", "y}o{u?", "{I))", "a(m}", "f(i[n)e]."};
    Brackets brackets;
    bool valid;
    std::cout << std::boolalpha;
    for (string str : strList){
        valid = brackets.match(str);
        cout << "The string " << str << " is: " << valid << endl;
    }
}