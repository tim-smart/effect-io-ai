Package: `effect`<br />
Module: `Effect`<br />

## Effect.timeoutOrElse

Applies a timeout to an effect, with a fallback effect executed if the timeout is reached.

**When to use**

Use when a timeout of an `Effect` should switch to a fallback effect.

**Details**

The fallback effect is created lazily by `orElse` and may introduce its own
success, failure, and requirement types.

**Gotchas**

If the timeout wins, the source effect is interrupted before the fallback is
run.

**Example** (Falling back on timeout)

```ts
import { Console, Effect } from "effect"

const slowQuery = Effect.gen(function*() {
  yield* Console.log("Starting database query...")
  yield* Effect.sleep("5 seconds")
  return "Database result"
})

// Use cached data as fallback when timeout is reached
const program = Effect.timeoutOrElse(slowQuery, {
  duration: "2 seconds",
  orElse: () =>
    Effect.gen(function*() {
      yield* Console.log("Query timed out, using cached data")
      return "Cached result"
    })
})

Effect.runPromise(program).then(console.log)
// Output:
// Starting database query...
// Query timed out, using cached data
// Cached result
```

**See**

- `timeout` for failing with a `TimeoutException`.
- `timeoutOption` for returning `Option.none` on timeout.

**Signature**

```ts
declare const timeoutOrElse: { <A2, E2, R2>(options: { readonly duration: Duration.Input; readonly orElse: LazyArg<Effect<A2, E2, R2>>; }): <A, E, R>(self: Effect<A, E, R>) => Effect<A | A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, options: { readonly duration: Duration.Input; readonly orElse: LazyArg<Effect<A2, E2, R2>>; }): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4608)

Since v4.0.0