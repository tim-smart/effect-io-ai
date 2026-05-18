Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.makeStoreRedis

Creates a Redis-backed `RateLimiterStore` using Lua scripts and the
configured key prefix.

**Signature**

```ts
declare const makeStoreRedis: (options?: { readonly prefix?: string | undefined; } | undefined) => Effect.Effect<{ readonly fixedWindow: (options: { readonly key: string; readonly tokens: number; readonly refillRate: Duration.Duration; readonly limit: number | undefined; }) => Effect.Effect<readonly [count: number, ttl: number], RateLimiterError>; readonly tokenBucket: (options: { readonly key: string; readonly tokens: number; readonly limit: number; readonly refillRate: Duration.Duration; readonly allowOverflow: boolean; }) => Effect.Effect<number, RateLimiterError>; }, never, Redis.Redis>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L588)

Since v4.0.0