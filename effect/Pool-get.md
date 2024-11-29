# get

Retrieves an item from the pool in a scoped effect. Note that if
acquisition fails, then the returned effect will fail for that same reason.
Retrying a failed acquisition attempt will repeat the acquisition attempt.

To import and use `get` from the "Pool" module:

ts
import \* as Pool from "effect/Pool"
// Can be accessed like this
Pool.get
undefined

**Signature**

```ts
export declare const get: <A, E>(self: Pool<A, E>) => Effect.Effect<A, E, Scope.Scope>
```
