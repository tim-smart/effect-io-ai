# failCause

Fails the `Deferred` with the specified `Cause`, which will be propagated to
all fibers waiting on the value of the `Deferred`.

To import and use `failCause` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.failCause
undefined

**Signature**

```ts
export declare const failCause: {
  <E>(cause: Cause.Cause<E>): <A>(self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, cause: Cause.Cause<E>): Effect.Effect<boolean>
}
```
