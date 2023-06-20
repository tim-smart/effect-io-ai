# interrupt

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the `FiberId` of the fiber
calling this method.

To import and use `interrupt` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.interrupt
```

**Signature**

```ts
export declare const interrupt: <E, A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
```
