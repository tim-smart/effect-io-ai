# isDone

Returns `true` if this `Deferred` has already been completed with a value or
an error, `false` otherwise.

To import and use `isDone` from the "Deferred" module:

```ts
import * as Deferred from 'effect/Deferred'

// Can be accessed like this
Deferred.isDone
```

**Signature**

```ts
export declare const isDone: <E, A>(self: Deferred<E, A>) => Effect.Effect<never, never, boolean>
```
