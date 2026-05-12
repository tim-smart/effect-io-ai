Package: `effect`<br />
Module: `Effect`<br />

## Effect.retryOrElse

Retries a failing effect and runs a fallback effect if retries are exhausted.

**Details**

The `Effect.retryOrElse` function attempts to retry a failing effect multiple
times according to a defined `Schedule` policy.

If the retries are exhausted and the effect still fails, it runs a fallback
effect instead.

**When to Use**

This function is useful when you want to handle failures gracefully by
specifying an alternative action after repeated failures.

**Example**

```ts
import { Console, Data, Effect, Schedule } from "effect"

class NetworkTimeoutError extends Data.TaggedError("NetworkTimeoutError")<{}> {}

let attempt = 0
const networkRequest = Effect.gen(function*() {
  attempt++
  yield* Console.log(`Network attempt ${attempt}`)
  if (attempt < 3) {
    return yield* Effect.fail(new NetworkTimeoutError())
  }
  return "Network data"
})

// Retry up to 2 times, then fall back to cached data
const program = Effect.retryOrElse(
  networkRequest,
  Schedule.recurs(2),
  (error, retryCount) =>
    Effect.gen(function*() {
      yield* Console.log(`All ${retryCount} retries failed, using cache`)
      return "Cached data"
    })
)

Effect.runPromise(program).then(console.log)
// Output:
// Network attempt 1
// Network attempt 2
// Network attempt 3
// Network data
```

**See**

- `retry` for a version that does not run a fallback effect.

**Signature**

```ts
declare const retryOrElse: { <A1, E, E1, R1, A2, E2, R2>(policy: Schedule<A1, NoInfer<E>, E1, R1>, orElse: (e: NoInfer<E>, out: A1) => Effect<A2, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A | A2, E1 | E2, R | R1 | R2>; <A, E, R, A1, E1, R1, A2, E2, R2>(self: Effect<A, E, R>, policy: Schedule<A1, NoInfer<E>, E1, R1>, orElse: (e: NoInfer<E>, out: A1) => Effect<A2, E2, R2>): Effect<A | A2, E1 | E2, R | R1 | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3995)

Since v2.0.0