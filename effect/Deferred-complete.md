# complete

Completes the deferred with the result of the specified effect. If the
deferred has already been completed, the method will produce false.

Note that `Deferred.completeWith` will be much faster, so consider using
that if you do not need to memoize the result of the specified effect.

To import and use `complete` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.complete
undefined

**Signature**

```ts
export declare const complete: {
  <A, E>(effect: Effect.Effect<A, E>): (self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, effect: Effect.Effect<A, E>): Effect.Effect<boolean>
}
```
