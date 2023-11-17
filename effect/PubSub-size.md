# size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

To import and use `size` from the "PubSub" module:

```ts
import * as PubSub from "effect/PubSub"
// Can be accessed like this
PubSub.size
```

**Signature**

```ts
export declare const size: <A>(self: PubSub<A>) => Effect.Effect<never, never, number>
```
