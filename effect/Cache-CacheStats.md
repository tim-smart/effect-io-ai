Package: `effect`<br />
Module: `Cache`<br />

## Cache.CacheStats

`CacheStats` represents a snapshot of statistics for the cache as of a
point in time.

**Signature**

```ts
export interface CacheStats {
  readonly hits: number
  readonly misses: number
  readonly size: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cache.ts#L233)

Since v2.0.0