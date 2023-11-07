# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

To import and use `shutdown` from the "PubSub" module:

```ts
import * as PubSub from 'effect/PubSub'

// Can be accessed like this
PubSub.shutdown
```

**Signature**

```ts
export declare const shutdown: <A>(self: PubSub<A>) => Effect.Effect<never, never, void>
```
