# takeAll

Takes all the values in the queue and returns the values. If the queue is
empty returns an empty collection.

To import and use `takeAll` from the "TQueue" module:

```ts
import * as TQueue from "effect/TQueue"
// Can be accessed like this
TQueue.takeAll
```

**Signature**

```ts
export declare const takeAll: <A>(self: TDequeue<A>) => STM.STM<never, never, A[]>
```
