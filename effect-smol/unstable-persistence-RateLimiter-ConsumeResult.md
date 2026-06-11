Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.ConsumeResult

Metadata returned after consuming tokens from a rate limiter.

**Signature**

```ts
export interface ConsumeResult {
  /**
   * The amount of delay to wait before making the next request, when the rate
   * limiter is using the "delay" `onExceeded` strategy. It will be
   * Duration.zero if the request is allowed immediately.
   */
  readonly delay: Duration.Duration

  /**
   * The maximum number of requests allowed in the current window.
   */
  readonly limit: number

  /**
   * The number of remaining requests in the current window.
   */
  readonly remaining: number

  /**
   * The time until the rate limit fully resets.
   */
  readonly resetAfter: Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L448)

Since v4.0.0