Package: `@effect/experimental`<br />
Module: `RateLimiter`<br />

## RateLimiter.makeWithRateLimiter

Access a function that applies rate limiting to an effect.

```ts
import { RateLimiter } from "@effect/experimental"
import { Effect } from "effect"

Effect.gen(function*() {
  // Access the `withLimiter` function from the RateLimiter module
  const withLimiter = yield* RateLimiter.makeWithRateLimiter

  // Apply a rate limiter to an effect
  yield* Effect.log("Making a request with rate limiting").pipe(
    withLimiter({
      key: "some-key",
      limit: 10,
      onExceeded: "delay",
      window: "5 seconds",
      algorithm: "fixed-window"
    })
  )
})
```

**Signature**

```ts
declare const makeWithRateLimiter: Effect.Effect<(options: { readonly algorithm?: "fixed-window" | "token-bucket" | undefined; readonly onExceeded?: "delay" | "fail" | undefined; readonly window: Duration.DurationInput; readonly limit: number; readonly key: string; readonly tokens?: number | undefined; }) => <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E | RateLimiterError, R>, never, RateLimiter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/RateLimiter.ts#L213)

Since v1.0.0