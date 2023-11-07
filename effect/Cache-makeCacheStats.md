# makeCacheStats

Constructs a new `CacheStats` from the specified values.

To import and use `makeCacheStats` from the "Cache" module:

```ts
import * as Cache from 'effect/Cache'

// Can be accessed like this
Cache.makeCacheStats
```

**Signature**

```ts
export declare const makeCacheStats: (options: {
  readonly hits: number
  readonly misses: number
  readonly size: number
}) => CacheStats
```
