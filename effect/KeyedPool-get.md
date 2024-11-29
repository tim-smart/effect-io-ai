# get

Retrieves an item from the pool belonging to the given key in a scoped
effect. Note that if acquisition fails, then the returned effect will fail
for that same reason. Retrying a failed acquisition attempt will repeat the
acquisition attempt.

To import and use `get` from the "KeyedPool" module:

ts
import \* as KeyedPool from "effect/KeyedPool"
// Can be accessed like this
KeyedPool.get
undefined

**Signature**

```ts
export declare const get: {
  <K>(key: K): <A, E>(self: KeyedPool<K, A, E>) => Effect.Effect<A, E, Scope.Scope>
  <K, A, E>(self: KeyedPool<K, A, E>, key: K): Effect.Effect<A, E, Scope.Scope>
}
```
