Package: `effect`<br />
Module: `Cache`<br />

## Cache.Entry

Represents a cache entry containing a deferred value and optional expiration time.
This is used internally by the cache implementation to track cached values and their lifetimes.

**Signature**

```ts
export interface Entry<A, E> {
  expiresAt: number | undefined
  readonly deferred: Deferred.Deferred<A, E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cache.ts#L108)

Since v4.0.0