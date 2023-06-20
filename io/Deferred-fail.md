# fail

Fails the `Deferred` with the specified error, which will be propagated to
all fibers waiting on the value of the `Deferred`.

To import and use `fail` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.fail
```

**Signature**

```ts
export declare const fail: {
  <E>(error: E): <A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
  <E, A>(self: Deferred<E, A>, error: E): Effect.Effect<never, never, boolean>
}
```
