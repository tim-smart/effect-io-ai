# unsafeDone

Unsafely exits the `Deferred` with the specified `Exit` value, which will be
propagated to all fibers waiting on the value of the `Deferred`.

To import and use `unsafeDone` from the "Deferred" module:

```ts
import * as Deferred from '@effect/io/Deferred'

// Can be accessed like this
Deferred.unsafeDone
```

**Signature**

```ts
export declare const unsafeDone: <E, A>(self: Deferred<E, A>, effect: Effect.Effect<never, E, A>) => void
```
