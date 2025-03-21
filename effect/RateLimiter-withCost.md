Package: `effect`<br />
Module: `RateLimiter`<br />

## RateLimiter.withCost

Alters the per-effect cost of the rate-limiter.

This can be used for "credit" based rate-limiting where different API endpoints
cost a different number of credits within a time window.
Eg: 1000 credits / hour, where a query costs 1 credit and a mutation costs 5 credits.

**Example**

```ts
import { Effect, RateLimiter } from "effect";
import { compose } from "effect/Function";

const program = Effect.scoped(
  Effect.gen(function* ($) {
    // Create a rate limiter that has an hourly limit of 1000 credits
    const rateLimiter = yield* $(RateLimiter.make({ limit: 1000, interval: "1 hours" }));
    // Query API costs 1 credit per call ( 1 is the default cost )
    const queryAPIRL = compose(rateLimiter, RateLimiter.withCost(1));
    // Mutation API costs 5 credits per call
    const mutationAPIRL = compose(rateLimiter, RateLimiter.withCost(5));

    // Use the pre-defined rate limiters
    yield* $(queryAPIRL(Effect.log("Sample Query")));
    yield* $(mutationAPIRL(Effect.log("Sample Mutation")));

    // Or set a cost on-the-fly
    yield* $(
      rateLimiter(Effect.log("Another query with a different cost")).pipe(
        RateLimiter.withCost(3)
      )
    );
  })
);
```

**Signature**

```ts
declare const withCost: (cost: number) => <A, E, R>(effect: Effect<A, E, R>) => Effect<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/RateLimiter.ts#L138)

Since v2.0.0