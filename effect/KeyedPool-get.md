## get

Retrieves an item from the pool belonging to the given key in a scoped
effect. Note that if acquisition fails, then the returned effect will fail
for that same reason. Retrying a failed acquisition attempt will repeat the
acquisition attempt.

**Signature**

```ts
declare const get: { <K>(key: K): <A, E>(self: KeyedPool<K, A, E>) => Effect.Effect<A, E, Scope.Scope>; <K, A, E>(self: KeyedPool<K, A, E>, key: K): Effect.Effect<A, E, Scope.Scope>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/KeyedPool.ts#L151)

Since v2.0.0