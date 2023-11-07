# failSync

Fails the `Deferred` with the specified error, which will be propagated to
all fibers waiting on the value of the `Deferred`.

To import and use `failSync` from the "Deferred" module:

```ts
import * as Deferred from 'effect/Deferred'

// Can be accessed like this
Deferred.failSync
```

**Signature**

```ts
export declare const failSync: {
  <E>(evaluate: LazyArg<E>): <A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, evaluate: LazyArg<E>): Effect.Effect<never, never, boolean>
}
```
