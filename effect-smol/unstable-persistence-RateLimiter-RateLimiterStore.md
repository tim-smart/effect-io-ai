Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.RateLimiterStore

Defines the low-level backing store for rate-limit state.

**When to use**

Use to provide the shared counter storage and adaptive feedback state used by
persistent rate-limit checks.

**Signature**

```ts
declare class RateLimiterStore
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L581)

Since v4.0.0