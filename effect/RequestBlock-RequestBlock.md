# RequestBlock

`RequestBlock` captures a collection of blocked requests as a data
structure. By doing this the library is able to preserve information about
which requests must be performed sequentially and which can be performed in
parallel, allowing for maximum possible batching and pipelining while
preserving ordering guarantees.

To import and use `RequestBlock` from the "RequestBlock" module:

ts
import \* as RequestBlock from "effect/RequestBlock"
// Can be accessed like this
RequestBlock.RequestBlock
undefined
