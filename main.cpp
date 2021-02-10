/*
 * NOTICE: THIS CODE IS TAKEN FROM ROSETTACODE.ORG, ACCESSED AT
 * https://rosettacode.org/wiki/LZW_compression#C.2B.2B
 *
 * WE DO NOT CLAIM ANY OWNERSHIP OF THIS CODE, NOR DO WE SAY THAT
 * IT IS OF ORIGINAL WORK. ALL CREDITS TO THE AUTHORS AND MAINTAINERS
 * OF ROSETTACODE.ORG
 *
 * */
#include <string>
#include <map>
#include <iostream>
#include <fstream>

// Compress a string to a list of output symbols.
// The result will be written to the output iterator
// starting at "result"; the final iterator is returned.
template <typename Iterator>
Iterator compress(const std::string &uncompressed, Iterator result) {
    // Build the dictionary.
    int dictSize = 256;
    std::map<std::string,int> dictionary;
    for (int i = 0; i < 256; i++)
        dictionary[std::string(1, i)] = i;

    std::string w;
    for (std::string::const_iterator it = uncompressed.begin();
         it != uncompressed.end(); ++it) {
        char c = *it;
        std::string wc = w + c;
        if (dictionary.count(wc))
            w = wc;
        else {
            *result++ = dictionary[w];
            // Add wc to the dictionary.
            dictionary[wc] = dictSize++;
            w = std::string(1, c);
        }
    }

    // Output the code for w.
    if (!w.empty())
        *result++ = dictionary[w];
    return result;
}

// Decompress a list of output ks to a string.
// "begin" and "end" must form a valid range of ints
template <typename Iterator>
std::string decompress(Iterator begin, Iterator end) {
    // Build the dictionary.
    int dictSize = 256;
    std::map<int,std::string> dictionary;
    for (int i = 0; i < 256; i++)
        dictionary[i] = std::string(1, i);

    std::string w(1, *begin++);
    std::string result = w;
    std::string entry;
    for ( ; begin != end; begin++) {
        int k = *begin;
        if (dictionary.count(k))
            entry = dictionary[k];
        else if (k == dictSize)
            entry = w + w[0];
        else
            throw "Bad compressed k";

        result += entry;

        // Add w+entry[0] to the dictionary.
        dictionary[dictSize++] = w + entry[0];

        w = entry;
    }
    return result;
}

#include <iostream>
#include <iterator>
#include <vector>
#include <sstream>
#include <fstream>
#include <algorithm>



int main() {
    // file declaration block
    std::ifstream file("consti.txt", std::ios::binary); // input file - consti
    std::ofstream writtenFile("consti-comp.txt"); // output file - consti.lzw
    std::ofstream newFile("consti-modified.txt"); // writes to consti-modified
    std::stringstream buffer;
    buffer << file.rdbuf();
    file.close();

    // compression block
    std::vector<int> compressed;
    compress(buffer.str(), std::back_inserter(compressed));
    std::copy(compressed.begin(), compressed.end(), std::ostream_iterator<int>(writtenFile, " "));
    std::cout << std::endl;
    writtenFile.close();

    // decompress block
    std::vector<int> testVector;
    std::ifstream readCompressed("consti-comp.txt"); // input file - compressed file
    int n;
    while(readCompressed >> n){
        testVector.push_back(n);
    }
    readCompressed.close();

    std::string decompressed = decompress(compressed.begin(), compressed.end());
    std::cout << decompressed << std::endl;
    newFile << decompressed;

    // file output block
    std::cout << "Buffer string size: " << buffer.str().size()  << " bytes" << std::endl;
    std::cout << "Compressed vector size: " << compressed.size() << " bytes" << std::endl;
    std::cout << "Decompressed string size: " << decompressed.size() << " bytes" << std::endl;

    std::cout << "Size difference: " << decompressed.size() - compressed.size() << " bytes" << std::endl;
    std::cout << "Test vector size: " << testVector.size() << std::endl;
    std::cout << "Main vector size: " << compressed.size();

    return 0;
}