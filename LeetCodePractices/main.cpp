//
//  main.cpp
//  LeetCodePractices
//
//  Created by 陳邦亢 on 2023/4/28.
//

#include <iostream>
#include "SimilarStringGroups.hpp"


int main(int argc, const char * argv[]) {
    // insert code here...
    std::cout << "Hello, World!\n";
    
    Solution solution = Solution();
    
    std::vector<std::string> strs = {"kccomwcgcs","socgcmcwkc","sgckwcmcoc","coswcmcgkc","cowkccmsgc","cosgmccwkc","sgmkwcccoc","coswmccgkc","kowcccmsgc","kgcomwcccs"};
    
    std::cout << solution.numSimilarGroups(strs) << "\n";
    
    return 0;
}
