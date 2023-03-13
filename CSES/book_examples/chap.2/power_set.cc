#include <vector>
#include <iostream>

#include "utest.h"

using std::vector;

void search_powerset(int k, int n, vector<int>& subset, vector<vector<int>>& sets)
{
    if (k == n + 1) { // all elements considered
        sets.push_back(subset);
    } else {
        // generate subsets with k
        subset.push_back(k);
        search_powerset(k + 1, n, subset, sets); // generate subsets when considering the k + 1 element

        // generate subsets without k
        subset.pop_back();
        search_powerset(k + 1, n, subset, sets);
    }
}

void print_subsets(const vector<vector<int>> &sets)
{
    for (auto& subset : sets) {
        if (subset.size() == 0) {
            std::cout << "empty";
        }
        for (int elm : subset) {
            std::cout << elm << ' ';
        }
        std::cout << '\n';
    }
}

vector<vector<int>> generate_power_set(int n)
{
    vector<int> buffer{};
    vector<vector<int>> all_sets{};
    search_powerset(1, n, buffer, all_sets);

    return all_sets;
}

UTEST(POWER, SET)
{
    auto all_sets = generate_power_set(4);
    print_subsets(all_sets);
}

UTEST_MAIN();