# isShutdown

Returns `true` if `shutdown` has been called, otherwise returns `false`.

To import and use `isShutdown` from the "TQueue" module:

ts
import \* as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.isShutdown
undefined

**Signature**

```ts
export declare const isShutdown: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<boolean>
```
