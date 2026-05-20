Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.make

Creates a `RateLimiter` from the current `RateLimiterStore`.

**Details**

The limiter supports fixed-window and token-bucket algorithms and either
fails or returns a delay when a limit is exceeded.

**Signature**

```ts
declare const make: Effect.Effect<RateLimiter, never, RateLimiterStore>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L93)

Since v4.0.0