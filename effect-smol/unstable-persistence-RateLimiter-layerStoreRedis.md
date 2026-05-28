Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.layerStoreRedis

Provides a Redis-backed `RateLimiterStore` using `makeStoreRedis`.

**Signature**

```ts
declare const layerStoreRedis: (options?: { readonly prefix?: string | undefined; }) => Layer.Layer<RateLimiterStore, never, Redis.Redis>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L742)

Since v4.0.0