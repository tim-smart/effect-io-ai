# isEmpty

Returns `true` if the `TQueue` contains zero elements, `false` otherwise.

To import and use `isEmpty` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.isEmpty
```

**Signature**

```ts
export declare const isEmpty: <A>(self: TQueue<A>) => STM.STM<never, never, boolean>
```
