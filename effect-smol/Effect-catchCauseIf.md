Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchCauseIf

Recovers from specific failures based on a predicate.

This function allows you to conditionally catch and recover from failures
that match a specific predicate. This is useful when you want to handle
only certain types of errors while letting others propagate.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.catchSomeCause`

**Example**

```ts
import { Cause, Console, Effect } from "effect"

const httpRequest = Effect.fail("Network Error")

// Only catch network-related failures
const program = Effect.catchCauseIf(
  httpRequest,
  Cause.hasFails,
  (cause) =>
    Effect.gen(function*() {
      yield* Console.log(`Caught network error: ${Cause.squash(cause)}`)
      return "Fallback response"
    })
)

Effect.runPromise(program).then(console.log)
// Output: "Caught network error: Network Error"
// Then: "Fallback response"
```

**Signature**

```ts
declare const catchCauseIf: { <E, B, E2, R2>(predicate: Predicate.Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A | B, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, predicate: Predicate.Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Effect<B, E2, R2>): Effect<A | B, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3434)

Since v4.0.0