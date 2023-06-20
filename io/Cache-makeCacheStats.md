# makeCacheStats

Constructs a new `CacheStats` from the specified values.

To import and use `makeCacheStats` from the "Cache" module:

```ts
import * as Cache from '@effect/io/Cache'

// Can be accessed like this
Cache.makeCacheStats
```

**Signature**

```ts
export declare const makeCacheStats: (hits: number, misses: number, size: number) => CacheStats
```
