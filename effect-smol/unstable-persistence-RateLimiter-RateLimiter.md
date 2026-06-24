Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.RateLimiter

Service for consuming rate-limit tokens for a key using fixed-window or
token-bucket algorithms.

**Signature**

```ts
export interface RateLimiter {
  readonly [TypeId]: TypeId

  readonly consume: (options: {
    readonly algorithm?: "fixed-window" | "token-bucket" | undefined
    readonly onExceeded?: "delay" | "fail" | undefined
    readonly window: Duration.Input
    readonly limit: number
    readonly key: string
    readonly tokens?: number | undefined
  }) => Effect.Effect<ConsumeResult, RateLimiterError>

  readonly adaptiveConsume: (options: AdaptiveConsumeOptions) => Effect.Effect<AdaptiveConsumeResult, RateLimiterError>

  readonly adaptiveFeedback: (options: AdaptiveFeedbackOptions) => Effect.Effect<void, RateLimiterError>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L45)

Since v4.0.0