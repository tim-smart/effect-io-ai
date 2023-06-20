# dieSync

Kills the `Deferred` with the specified defect, which will be propagated to
all fibers waiting on the value of the `Deferred`.

To import and use `dieSync` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.dieSync
```

**Signature**

```ts
export declare const dieSync: {
  (evaluate: LazyArg<unknown>): <E, A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, evaluate: LazyArg<unknown>): Effect.Effect<never, never, boolean>
}
```
