Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapCauseIf

Conditionally executes a side effect based on the cause of a failed effect.

This function allows you to tap into the cause of an effect's failure only when
the cause matches a specific predicate. This is useful for conditional logging,
monitoring, or other side effects based on the type of failure.

**Example**

```ts
import { Cause, Console, Effect } from "effect"

const task = Effect.fail("Network timeout")

// Only log causes that contain failures (not interrupts or defects)
const program = Effect.tapCauseIf(
  task,
  Cause.hasFails,
  (cause) => Console.log(`Logging failure cause: ${Cause.squash(cause)}`)
)

Effect.runPromiseExit(program).then(console.log)
// Output: "Logging failure cause: Network timeout"
// Then: { _id: 'Exit', _tag: 'Failure', cause: ... }
```

**Signature**

```ts
declare const tapCauseIf: { <E, B, E2, R2>(predicate: Predicate.Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Effect<B, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R | R2>; <A, E, R, B, E2, R2>(self: Effect<A, E, R>, predicate: Predicate.Predicate<Cause.Cause<E>>, f: (cause: Cause.Cause<E>) => Effect<B, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3764)

Since v4.0.0