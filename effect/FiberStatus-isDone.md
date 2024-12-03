# isDone

Returns `true` if the specified `FiberStatus` is `Done`, `false` otherwise.

To import and use `isDone` from the "FiberStatus" module:

```ts
import * as FiberStatus from "effect/FiberStatus"
// Can be accessed like this
FiberStatus.isDone
```

**Signature**

```ts
export declare const isDone: (self: FiberStatus) => self is Done
```
