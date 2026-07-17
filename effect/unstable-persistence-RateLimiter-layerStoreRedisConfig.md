Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.layerStoreRedisConfig

Provides a Redis-backed `RateLimiterStore` from wrapped configuration
options.

**Signature**

```ts
declare const layerStoreRedisConfig: (options: Config.Wrap<{ readonly prefix?: string | undefined; }>) => Layer.Layer<RateLimiterStore, Config.ConfigError, Redis.Redis>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RateLimiter.ts#L1336)

Since v4.0.0