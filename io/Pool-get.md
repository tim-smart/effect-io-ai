# get

Retrieves an item from the pool in a scoped effect. Note that if
acquisition fails, then the returned effect will fail for that same reason.
Retrying a failed acquisition attempt will repeat the acquisition attempt.

To import and use `get` from the "Pool" module:

```ts
import * as Pool from '@effect/io/Pool'

// Can be accessed like this
Pool.get
```

**Signature**

```ts
export declare const get: <E, A>(self: Pool<E, A>) => Effect.Effect<Scope.Scope, E, A>
```
