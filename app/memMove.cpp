#include <iostream>
#include <cstring>
#include <array>

using std::cout;
using std::endl;
using std::array;

template<class T>
void memmove(T* src, T* dest, size_t size) {

  if (src == dest)
    return;

  if(src < dest) {
    //copy from back
    src = src + size - 1;
    dest = dest + size - 1;
    while(size--)
    {
      *dest = *src;
      dest -= 1;
      src -= 1;
    }
  } else {
    //copy from front
    while(size--)
    {
      *dest = *src;
      dest += 1;
      src += 1;
    }
  }
}

template<class T>
void printer(T* arr, T len){
  for (int ii=0; ii<len; ii++){
    printf("%d ", arr[ii]);
  }
  printf("\n");
}

int main(){
    int shift = 3;
    int len = 10;

    int* arr = new int[len+shift];
    int oldarr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    memcpy(arr, oldarr, sizeof(oldarr));
    cout <<"Before ";
    printer<int>(arr, len+shift);
    memmove<int>(arr, arr+shift, len);
    cout <<"After ";
    printer<int>(arr, len+shift);
    delete[] arr;

    array<int,13> arr1 = {1,2,3,4,5,6,7,8,9,10,11,12,13};
    memmove<int>(arr1.begin()+shift,arr1.begin(),len);
    cout << "Array after: ";
    for(auto ii : arr1){  
      cout<< ii << " ";
    }
    cout<<endl;

    return 0;
}
