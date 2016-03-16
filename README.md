## [PureMVC](http://puremvc.github.com/) [Swift](https://github.com/PureMVC/puremvc-swift-standard-framework/wiki) Utility: AsyncProxy

The AsyncProxy utility offers a solution to the problem of performing some domain logic and/or decorating the results at the end of an asynchronous operation within the AsyncProxy before handing results over to a SimpleCommand or [AsyncCommand](https://github.com/PureMVC/puremvc-swift-util-asynccommand/wiki) via a provided IResponder interface.

AsyncMacroCommand is used to chain a series of asynchronous operations while pairing each AsyncCommand with its own AsyncProxy.

Each AsyncProxy then at the end of completion of the asynchronous operation optionally performing some domain logic/decorating results can pass the results back to its associated AsyncCommand which can then can add results to it's notification and pass it to the next AsyncCommand. It's best to Follow the [Single Responsibility Principle](http://en.wikipedia.org/wiki/Single_responsibility_principle) for each AsyncCommand-AsyncProxy pair. The concepts are also similar to [Monads](http://en.wikipedia.org/wiki/Monad_(functional_programming)) but in an asynchronous manner.

* [API Docs Standard](http://puremvc.org/pages/docs/Swift/Utility_Swift_AsyncProxy/standard/)
* [API Docs MultiCore](http://puremvc.org/pages/docs/Swift/Utility_Swift_AsyncProxy/multicore/)
* [Discussion](http://forums.puremvc.org/index.php?topic=2118.0)

## Platforms / Technologies
* [Swift](http://en.wikipedia.org/wiki/Swift_(programming_language))
* [iOS](http://en.wikipedia.org/wiki/IOS)
* [Mac OS](http://en.wikipedia.org/wiki/Mac_OS)

## Status
Production - [Version 1.1](https://github.com/PureMVC/puremvc-swift-util-asyncproxy/blob/master/VERSION)

## License
* PureMVC Swift Utility – AsyncProxy - Copyright © 2015-2025 Saad Shams
* PureMVC - Copyright © 2015-2025 Futurescale, Inc.
* All rights reserved.

* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

  * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
  * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
  * Neither the name of Futurescale, Inc., PureMVC.org, nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
