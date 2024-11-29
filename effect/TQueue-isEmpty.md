# isEmpty

Returns `true` if the `TQueue` contains zero elements, `false` otherwise.

To import and use `isEmpty` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.isEmpty
undefined

**Signature**

```ts
export declare const isEmpty: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<boolean>
```
