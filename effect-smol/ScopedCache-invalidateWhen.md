Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.invalidateWhen

Conditionally invalidates the entry associated with the specified key in the cache
if the predicate returns true for the cached value.

**Signature**

```ts
declare const invalidateWhen: { <Key, A>(key: Key, f: Predicate.Predicate<A>): <E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<boolean>; <Key, A, E, R>(self: ScopedCache<Key, A, E, R>, key: Key, f: Predicate.Predicate<A>): Effect.Effect<boolean>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L381)

Since v4.0.0