# isFiberId

Returns `true` if the specified unknown value is a `FiberId`, `false`
otherwise.

To import and use `isFiberId` from the "FiberId" module:

ts
import \* as FiberId from "effect/FiberId"
// Can be accessed like this
FiberId.isFiberId
undefined

**Signature**

```ts
export declare const isFiberId: (self: unknown) => self is FiberId
```
