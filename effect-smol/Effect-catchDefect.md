Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchDefect

Recovers from all defects using a provided recovery function.

**When to Use**

There is no sensible way to recover from defects. This method should be used
only at the boundary between Effect and an external system, to transmit
information on a defect for diagnostic or explanatory purposes.

**Details**

`catchAllDefect` allows you to handle defects, which are unexpected errors
that usually cause the program to terminate. This function lets you recover
from these defects by providing a function that handles the error. However,
it does not handle expected errors (like those from `fail`) or
execution interruptions (like those from `interrupt`).

**When to Recover from Defects**

Defects are unexpected errors that typically shouldn't be recovered from, as
they often indicate serious issues. However, in some cases, such as
dynamically loaded plugins, controlled recovery might be needed.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.catchAllDefect`

**Example**

```ts
import { Console, Effect } from "effect"

// An effect that might throw an unexpected error (defect)
const program = Effect.sync(() => {
  throw new Error("Unexpected error")
})

// Recover from defects only
const recovered = Effect.catchDefect(program, (defect) => {
  return Console.log(`Caught defect: ${defect}`).pipe(
    Effect.as("Recovered from defect")
  )
})
```

**Signature**

```ts
declare const catchDefect: { <A2, E2, R2>(f: (defect: unknown) => Effect<A2, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (defect: unknown) => Effect<A2, E2, R2>): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3241)

Since v4.0.0