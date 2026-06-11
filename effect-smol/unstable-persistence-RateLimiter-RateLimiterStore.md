Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.RateLimiterStore

Defines the low-level backing store for fixed-window counters and token-bucket state.

**When to use**

Use to provide the shared counter storage used by persistent rate-limit
checks.

**Signature**

```ts
declare class RateLimiterStore
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L483)

Since v4.0.0