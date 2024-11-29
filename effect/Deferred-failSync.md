# failSync

Fails the `Deferred` with the specified error, which will be propagated to
all fibers waiting on the value of the `Deferred`.

To import and use `failSync` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.failSync
undefined

**Signature**

```ts
export declare const failSync: {
  <E>(evaluate: LazyArg<E>): <A>(self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, evaluate: LazyArg<E>): Effect.Effect<boolean>
}
```
