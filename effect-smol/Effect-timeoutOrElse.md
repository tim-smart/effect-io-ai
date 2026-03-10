Package: `effect`<br />
Module: `Effect`<br />

## Effect.timeoutOrElse

Applies a timeout to an effect, with a fallback effect executed if the timeout is reached.

This function is useful when you want to set a maximum duration for an operation
and provide an alternative action if the timeout is exceeded.

**Example**

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
  onTimeout: () =>
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

**Signature**

```ts
declare const timeoutOrElse: { <A2, E2, R2>(options: { readonly duration: Duration.Input; readonly onTimeout: LazyArg<Effect<A2, E2, R2>>; }): <A, E, R>(self: Effect<A, E, R>) => Effect<A | A2, E | E2, R | R2>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, options: { readonly duration: Duration.Input; readonly onTimeout: LazyArg<Effect<A2, E2, R2>>; }): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4527)

Since v3.1.0