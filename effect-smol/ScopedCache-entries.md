Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.entries

Retrieves all key-value pairs from the cache as an iterable. This function
only returns entries with successfully resolved values, filtering out any
failed lookups or expired entries.

**Signature**

```ts
declare const entries: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<Array<[Key, A]>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L545)

Since v4.0.0