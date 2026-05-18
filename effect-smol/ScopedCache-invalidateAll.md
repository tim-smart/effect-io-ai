Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.invalidateAll

Removes every entry from the cache and closes each entry scope.

If the cache is closed, the effect is interrupted.

**Signature**

```ts
declare const invalidateAll: <Key, A, E, R>(self: ScopedCache<Key, A, E, R>) => Effect.Effect<void>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L548)

Since v4.0.0