Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.AdaptiveConsumeResult

Metadata returned after consuming tokens from the adaptive rate limiter store.

**Signature**

```ts
export interface AdaptiveConsumeResult {
  /**
   * The amount of delay to wait before making the request.
   */
  readonly delay: Duration.Duration

  /**
   * The adaptive state epoch used to correlate later response feedback.
   */
  readonly epoch: number

  /**
   * The adaptive phase observed by this consume operation.
   */
  readonly phase: AdaptivePhase
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RateLimiter.ts#L520)

Since v4.0.0