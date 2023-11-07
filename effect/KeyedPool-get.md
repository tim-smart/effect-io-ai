# get

Retrieves an item from the pool belonging to the given key in a scoped
effect. Note that if acquisition fails, then the returned effect will fail
for that same reason. Retrying a failed acquisition attempt will repeat the
acquisition attempt.

To import and use `get` from the "KeyedPool" module:

```ts
import * as KeyedPool from 'effect/KeyedPool'

// Can be accessed like this
KeyedPool.get
```

**Signature**

```ts
export declare const get: {
  <K>(key: K): <E, A>(self: KeyedPool<K, E, A>) => Effect.Effect<Scope.Scope, E, A>
  <K, E, A>(self: KeyedPool<K, E, A>, key: K): Effect.Effect<Scope.Scope, E, A>
}
```
