# make

Constructs a new `RateLimiter` which will utilize the specified algorithm
to limit requests (defaults to `token-bucket`).

Notes

- Only the moment of starting the effect is rate limited. The number of concurrent executions is not bounded.
- Instances of `RateLimiter` can be composed.
- The "cost" per effect can be changed. See {@link withCost}

To import and use `make` from the "RateLimiter" module:

ts
import \* as RateLimiter from "effect/RateLimiter"
// Can be accessed like this
RateLimiter.make
undefined

**Example**

```ts
import { Effect, RateLimiter } from "effect"
import { compose } from "effect/Function"

const program = Effect.scoped(
  Effect.gen(function* ($) {
    const perMinuteRL = yield* $(RateLimiter.make({ limit: 30, interval: "1 minutes" }))
    const perSecondRL = yield* $(RateLimiter.make({ limit: 2, interval: "1 seconds" }))

    // This rate limiter respects both the 30 calls per minute
    // and the 2 calls per second constraints.
    const rateLimit = compose(perMinuteRL, perSecondRL)

    // simulate repeated calls
    for (let n = 0; n < 100; n++) {
      // wrap the effect we want to limit with rateLimit
      yield* $(rateLimit(Effect.log("Calling RateLimited Effect")))
    }
  })
)
```

**Signature**

```ts
export declare const make: (options: RateLimiter.Options) => Effect<RateLimiter, never, Scope>
```
