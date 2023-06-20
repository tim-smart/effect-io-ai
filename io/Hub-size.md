# size

Retrieves the size of the queue, which is equal to the number of elements
in the queue. This may be negative if fibers are suspended waiting for
elements to be added to the queue.

To import and use `size` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.size
```

**Signature**

```ts
export declare const size: <A>(self: Hub<A>) => Effect.Effect<never, never, number>
```
