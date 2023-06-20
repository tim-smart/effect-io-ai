# shutdown

Interrupts any fibers that are suspended on `offer` or `take`. Future calls
to `offer*` and `take*` will be interrupted immediately.

To import and use `shutdown` from the "Hub" module:

```ts
import * as Hub from '@effect/io/Hub'

// Can be accessed like this
Hub.shutdown
```

**Signature**

```ts
export declare const shutdown: <A>(self: Hub<A>) => Effect.Effect<never, never, void>
```
