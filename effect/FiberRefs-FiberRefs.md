# FiberRefs

`FiberRefs` is a data type that represents a collection of `FiberRef` values.

This allows safely propagating `FiberRef` values across fiber boundaries, for
example between an asynchronous producer and consumer.

To import and use `FiberRefs` from the "FiberRefs" module:

```ts
import * as FiberRefs from "effect/FiberRefs"
// Can be accessed like this
FiberRefs.FiberRefs
```
