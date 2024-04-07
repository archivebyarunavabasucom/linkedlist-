#include <iostream>
#include <vector>
using namespace std;

class Node
{
public:
   int data;
   Node *next;

   Node(int data1, Node *next1)
   {
      data = data1;
      next = next1;
   }
};

int main()
{
   vector<int> arr;
   for (int i = 1; i <= 6; ++i)
   {
      arr.push_back(i);
   }

   Node y =  Node(arr[0], nullptr);
   cout << y.data;
   return 0;
}
