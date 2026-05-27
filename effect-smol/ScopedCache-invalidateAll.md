Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.invalidateAll

Removes every entry from the cache and closes each entry scope.

**When to use**

Use to clear a scoped cache and release resources owned by all cached entries.

**Details**

If the cache is closed, the effect is interrupted.

**See**

- `invalidate` for removing one cached entry

**Signature**

```ts
declare const invalidateAll: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L698)

Since v4.0.0