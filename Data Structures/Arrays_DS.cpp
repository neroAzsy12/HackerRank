// g++ -o filename filename.cpp -std=c++14

#include <iostream>
#include <vector>

using namespace std;

// returns the reversed vector of the input vector a
vector<int> reverseArray(vector<int> a) {
    for(int i = 0; i < a.size() / 2; i++) {
        int tmp = a[i];
        a[i] = a[a.size() - 1 - i];
        a[a.size() - 1 - i] = tmp;
    }

    return a;
}

int main() {
    vector<int> test;
    int n;
    cin >> n;

    for(int i = 0; i < n; i++) {
        int tmp;
        cin >> tmp;
        test.push_back(tmp);
    }

    vector<int> result = reverseArray(test);

    for(int i = 0; i < result.size(); i++) {
        printf("%d ", result[i]);
    }
    printf("\n");
}
