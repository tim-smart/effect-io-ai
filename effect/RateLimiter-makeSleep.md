Package: `@effect/experimental`<br />
Module: `RateLimiter`<br />

## RateLimiter.makeSleep

Access a function that sleeps when the rate limit is exceeded.

```ts
import { RateLimiter } from "@effect/experimental"
import { Effect } from "effect"

export default Effect.gen(function*() {
  // Access the `sleep` function from the RateLimiter module
  const sleep = yield* RateLimiter.makeSleep

  // Use the `sleep` function with specific rate limiting parameters.
  // This will only sleep if the rate limit has been exceeded.
  yield* sleep({
    key: "some-key",
    limit: 10,
    window: "5 seconds",
    algorithm: "fixed-window"
  })
})
```

**Signature**

```ts
declare const makeSleep: Effect.Effect<(options: { readonly algorithm?: "fixed-window" | "token-bucket" | undefined; readonly window: Duration.DurationInput; readonly limit: number; readonly key: string; readonly tokens?: number | undefined; }) => Effect.Effect<ConsumeResult, RateLimitStoreError>, never, RateLimiter>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/experimental/src/RateLimiter.ts#L258)

Since v1.0.0