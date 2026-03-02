Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.set

Sets the value associated with the specified key in the cache. This will
overwrite any existing value for that key, skipping the lookup function.

**Signature**

```ts
declare const set: { <Key, A>(key: Key, value: A): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key, value: A): Effect.Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L301)

Since v4.0.0