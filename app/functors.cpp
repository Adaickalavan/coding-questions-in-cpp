#include <iostream>
#include <string>

using std::cout;
using std::string;

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
  Add() {};
  double operator() (double left, double right) override { return left+right; };
  multipleValues multipleReturnValues() override { return multipleValues{.ii=1,.ss="Add",.cc='A'}; };
};

// Multiply two doubles                                                                                                                                                                                                 
class Multiply : public BinaryFunction {
public:
  Multiply() {};
  double operator() (double left, double right) override { return left*right; };
};

double binary_op(double left, double right, BinaryFunction* bin_func, double func(double left, double right)) {
  cout << (bin_func->multipleReturnValues()).cc << " - " << (bin_func->multipleReturnValues()).ii << "\n";
  cout << func(left,right) << "\n";
  return (*bin_func)(left, right);
}

int main( ) {
  double a = 5.0;
  double b = 10.0;

  BinaryFunction* pAdd = new Add();
  BinaryFunction* pMultiply = new Multiply();

  std::cout << "Add: " << binary_op(a, b, pAdd, adder) << std::endl;
  std::cout << "Multiply: " << binary_op(a, b, pMultiply, multiplier) << std::endl;

  delete pAdd;
  delete pMultiply;

  return 0;
}