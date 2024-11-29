# fail

Fails the `Deferred` with the specified error, which will be propagated to
all fibers waiting on the value of the `Deferred`.

To import and use `fail` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.fail
undefined

**Signature**

```ts
export declare const fail: {
  <E>(error: E): <A>(self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, error: E): Effect.Effect<boolean>
}
```
