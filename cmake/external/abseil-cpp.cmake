# Copyright 2018 Google
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include(ExternalProject)

ExternalProject_Add(
  abseil-cpp

  DOWNLOAD_DIR ${FIREBASE_DOWNLOAD_DIR}
  DOWNLOAD_NAME abseil-cpp.tar.gz
  URL https://github.com/abseil/abseil-cpp/archive/ba8d6cf07766263723e86736f20a51c1c9c67b19.tar.gz
  URL_HASH SHA256=213b5202853bfdab7690959bf7200de85f4a4930d171eb38bfcd4de73d68ad5a

  PREFIX ${PROJECT_BINARY_DIR}/external/abseil-cpp

  CMAKE_ARGS
    -DCMAKE_BUILD_TYPE:STRING=${CMAKE_BUILD_TYPE}
    -DCMAKE_INSTALL_PREFIX:STRING=${FIREBASE_INSTALL_DIR}
    -DCARES_STATIC:BOOL=ON

  TEST_COMMAND ""
  INSTALL_COMMAND ""
)
