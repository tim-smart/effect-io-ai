# interruptWith

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the specified `FiberId`.

To import and use `interruptWith` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.interruptWith
```

**Signature**

```ts
export declare const interruptWith: {
  (fiberId: FiberId.FiberId): <E, A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, fiberId: FiberId.FiberId): Effect.Effect<never, never, boolean>
}
```
