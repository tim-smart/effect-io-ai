Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.size

Retrieves the approximate number of entries in the cache.

**When to use**

Use to inspect how many entries are currently stored in the scoped cache.

**Gotchas**

Note that expired entries are counted until they are accessed and removed.
The size reflects the current number of entries stored, not the number
of valid entries.

**Signature**

```ts
declare const size: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L734)

Since v4.0.0