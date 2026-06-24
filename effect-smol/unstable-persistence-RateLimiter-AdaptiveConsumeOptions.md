Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.AdaptiveConsumeOptions

Options for consuming tokens from the adaptive rate limiter store.

**Signature**

```ts
export interface AdaptiveConsumeOptions {
  /**
   * The rate-limit key.
   */
  readonly key: string

  /**
   * The number of tokens to consume.
   */
  readonly tokens: number

  /**
   * The fallback limit configured for the regular rate limiter.
   */
  readonly fallbackLimit: number

  /**
   * The fallback window configured for the regular rate limiter.
   */
  readonly fallbackWindow: Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L492)

Since v4.0.0