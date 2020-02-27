#include <iostream>
#include <memory>
#include <string>

using std::cout;
using std::string;
using std::unique_ptr;

double adder(double left, double right){
    return left+right+100;
}

double multiplier(double left, double right){
    return left*right*100;
}

struct multipleValues {
    int ii;
    string ss;
    char cc;
};

// Abstract base class                                                                                                                                                                                                  
class BinaryFunction {
    public:
        BinaryFunction() {};
        virtual ~BinaryFunction(){};
        virtual double operator() (double left, double right) = 0;
        virtual multipleValues multipleReturnValues(){return multipleValues{.ii=2,.ss="Binary",.cc='B'}; };
};

// Add two doubles                                                                                                                                                                                                      
class Add : public BinaryFunction {
    public:
      Add(){};
        double operator() (double left, double right) override { return left+right; };
        multipleValues multipleReturnValues() override { return multipleValues{.ii=1,.ss="Add",.cc='A'}; };
};

// Multiply two doubles                                                                                                                                                                                                 
class Multiply : public BinaryFunction {
    public:
        Multiply() {};
        double operator() (double left, double right) override { return left*right; };
};

void binary_op(double left, double right, unique_ptr<BinaryFunction>& bin_func, double func(double left, double right)) {
    cout << (bin_func.get()->multipleReturnValues()).ss << " - ";
    cout << (bin_func.get()->multipleReturnValues()).ii << " - ";
    cout << func(left,right) << " - ";
    cout << (*bin_func.get())(left, right) <<"\n";
    return;
}

int main() {
    double a = 5.0;
    double b = 10.0;

    unique_ptr<BinaryFunction> pAdd(new Add());
    unique_ptr<BinaryFunction> pMultiply(new Multiply());

    binary_op(a, b, pAdd, adder);
    binary_op(a, b, pMultiply, multiplier);

    // delete pAdd;
    // delete pMultiply;

    return 0;
}