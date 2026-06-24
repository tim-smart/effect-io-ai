Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.AdaptivePhase

Phase of adaptive rate limiting driven by server feedback.

**Signature**

```ts
type AdaptivePhase = "inactive" | "cooldown" | "learning" | "learned"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RateLimiter.ts#L484)

Since v4.0.0