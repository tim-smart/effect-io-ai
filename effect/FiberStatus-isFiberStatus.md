# isFiberStatus

Returns `true` if the specified value is a `FiberStatus`, `false` otherwise.

To import and use `isFiberStatus` from the "FiberStatus" module:

ts
import \* as FiberStatus from "effect/FiberStatus"
// Can be accessed like this
FiberStatus.isFiberStatus
undefined

**Signature**

```ts
export declare const isFiberStatus: (u: unknown) => u is FiberStatus
```
