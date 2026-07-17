Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.RateLimitExceeded

Error reason for a rate-limit check that exceeded the configured limit.

**Details**

Includes the affected key, limit, remaining token count, and retry delay.

**Signature**

```ts
declare class RateLimitExceeded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RateLimiter.ts#L359)

Since v4.0.0