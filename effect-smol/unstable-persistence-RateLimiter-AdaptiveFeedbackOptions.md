Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.AdaptiveFeedbackOptions

Options for reporting response feedback to the adaptive rate limiter store.

**Signature**

```ts
export interface AdaptiveFeedbackOptions {
  /**
   * The rate-limit key.
   */
  readonly key: string

  /**
   * The adaptive state epoch returned by `adaptiveConsume`.
   */
  readonly epoch: number

  /**
   * The number of tokens consumed by the request.
   */
  readonly tokens: number

  /**
   * The HTTP response status code.
   */
  readonly status: number

  /**
   * The parsed `Retry-After` delay, when present.
   */
  readonly retryAfter: Duration.Duration | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L543)

Since v4.0.0