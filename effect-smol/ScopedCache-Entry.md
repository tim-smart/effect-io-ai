Package: `effect`<br />
Module: `ScopedCache`<br />

## ScopedCache.Entry

Represents a cache entry containing a deferred value and optional expiration time.
This is used internally by the cache implementation to track cached values and their lifetimes.

**Signature**

```ts
export interface Entry<A, E> {
  expiresAt: number | undefined
  readonly deferred: Deferred.Deferred<A, E>
  readonly scope: Scope.Closeable
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ScopedCache.ts#L53)

Since v4.0.0