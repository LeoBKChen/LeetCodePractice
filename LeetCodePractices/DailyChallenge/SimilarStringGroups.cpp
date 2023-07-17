//
//  SimilarStringGroups.cpp
//  LeetCodePractices
//
//  Created by 陳邦亢 on 2023/4/28.
//

#include "SimilarStringGroups.hpp"
#include <iostream>

void dfs(int node, std::vector<std::vector<int>>& adj, std::vector<bool>& visit) {
    visit[node] = true;
    for (int neighbor : adj[node]) {
        if (!visit[neighbor]) {
            dfs(neighbor, adj, visit);
        }
    }
}

int Solution::numSimilarGroups(std::vector<std::string>& strs) {

    int n = int(strs.size());
    std::vector<std::vector<int>> adj(n);

    for (int i = 0; i < n; i++) {
        for (int j = i + 1; j < n; j++) {
            if ((*this).isSimilar(strs[i], strs[j])) {
                adj[i].push_back(j);
                adj[j].push_back(i);
            }
        }
    }

    std::vector<bool> visit(n);
    int count = 0;
    // Count the number of connected components.
    for (int i = 0; i < n; i++) {
        if (!visit[i]) {
            dfs(i, adj, visit);
            count++;
        }
    }

    return count;
}

bool Solution::isSimilar(std::string a, std::string b) {
    int diffCounts = 0;

    for (int i = 0; i < a.length(); i++) {
        if (a[i] != b[i]) {
            diffCounts ++;
        }
        if (diffCounts > 2) {
            return false;
        }
    }

    if (diffCounts == 0 || diffCounts == 2) {
        return true;
    }
    else {
        return false;
    }
    
}
