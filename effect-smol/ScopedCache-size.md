Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.size

Retrieves the approximate number of entries in the cache.

Note that expired entries are counted until they are accessed and removed.
The size reflects the current number of entries stored, not the number
of valid entries.

**Signature**

```ts
declare const size: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L500)

Since v4.0.0