Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.RateLimiterError

Error raised by rate limiter operations, wrapping a concrete failure
`reason`.

**Signature**

```ts
declare class RateLimiterError { constructor(props: {
    readonly reason: RateLimiterErrorReason
  }) }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RateLimiter.ts#L418)

Since v4.0.0