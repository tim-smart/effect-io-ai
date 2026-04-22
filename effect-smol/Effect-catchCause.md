Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchCause

Handles both recoverable and unrecoverable errors by providing a recovery
effect.

**When to Use**

The `catchCause` function allows you to handle all errors, including
unrecoverable defects, by providing a recovery effect. The recovery logic is
based on the `Cause` of the error, which provides detailed information about
the failure.

**When to Recover from Defects**

Defects are unexpected errors that typically shouldn't be recovered from, as
they often indicate serious issues. However, in some cases, such as
dynamically loaded plugins, controlled recovery might be needed.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.catchAllCause`

**Example**

```ts
import { Cause, Console, Effect } from "effect"

// An effect that might fail in different ways
const program = Effect.die("Something went wrong")

// Recover from any cause (including defects)
const recovered = Effect.catchCause(program, (cause) => {
  if (Cause.hasDies(cause)) {
    return Console.log("Caught defect").pipe(
      Effect.as("Recovered from defect")
    )
  }
  return Effect.succeed("Unknown error")
})
```

**Signature**

```ts
declare const catchCause: { <E, A2, E2, R2>(f: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>): Effect<A | A2, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3210)

Since v4.0.0