# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

To import and use `shutdown` from the "Queue" module:

```ts
import * as Queue from '@effect/io/Queue'

// Can be accessed like this
Queue.shutdown
```

**Signature**

```ts
export declare const shutdown: <A>(self: Dequeue<A> | Enqueue<A>) => Effect.Effect<never, never, void>
```
