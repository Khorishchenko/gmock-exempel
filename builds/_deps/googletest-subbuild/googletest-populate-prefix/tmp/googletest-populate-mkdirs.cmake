# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-src"
  "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-build"
  "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-subbuild/googletest-populate-prefix"
  "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-subbuild/googletest-populate-prefix/tmp"
  "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp"
  "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-subbuild/googletest-populate-prefix/src"
  "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/user/Desktop/gmock-exempel/builds/_deps/googletest-subbuild/googletest-populate-prefix/src/googletest-populate-stamp/${subDir}")
endforeach()
