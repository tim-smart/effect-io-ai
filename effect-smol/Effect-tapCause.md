Package: `effect`<br />
Module: `Effect`<br />

## Effect.tapCause

Runs an effectful operation with the full `Cause` when the source effect
fails.

**Details**

Use this to log or inspect typed failures, defects, and interruptions. When
the operation succeeds, the original cause is preserved. If the operation
fails, its error is also represented in the returned effect.

**Example** (Observing full failure causes)

```ts
import { Cause, Console, Effect } from "effect"

const task = Effect.fail("Something went wrong")

const program = Effect.tapCause(
  task,
  (cause) => Console.log(`Logging cause: ${Cause.squash(cause)}`)
)

Effect.runPromiseExit(program).then(console.log)
// Output: "Logging cause: Error: Something went wrong"
// Then: { _id: 'Exit', _tag: 'Failure', cause: ... }
```

**Signature**

```ts
declare const tapCause: { <E, X, E2, R2>(f: (cause: Cause.Cause<NoInfer<E>>) => Effect<X, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: Effect<A, E, R>, f: (cause: Cause.Cause<E>) => Effect<X, E2, R2>): Effect<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3450)

Since v4.0.0