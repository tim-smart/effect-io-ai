# interruptWith

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the specified `FiberId`.

To import and use `interruptWith` from the "Deferred" module:

```ts
import * as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.interruptWith
```

**Signature**

```ts
export declare const interruptWith: {
  (fiberId: FiberId.FiberId): <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, fiberId: FiberId.FiberId): Effect.Effect<boolean>
}
```
