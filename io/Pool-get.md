# get

Retrieves an item from the pool in a scoped effect. Note that if
acquisition fails, then the returned effect will fail for that same reason.
Retrying a failed acquisition attempt will repeat the acquisition attempt.

Part of the `Pool` module, imported from `@effect/io/Pool`.

**Signature**

```ts
export declare const get: <E, A>(self: Pool<E, A>) => Effect.Effect<Scope.Scope, E, A>
```
