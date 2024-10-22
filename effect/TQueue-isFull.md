# isFull

Returns `true` if the `TQueue` contains at least one element, `false`
otherwise.

To import and use `isFull` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.isFull
```

**Signature**

```ts
export declare const isFull: <A>(self: TDequeue<A> | TEnqueue<A>) => STM.STM<boolean>
```
