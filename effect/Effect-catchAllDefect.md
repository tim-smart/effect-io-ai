## catchAllDefect

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

**Example**

```ts
// Title: Handling All Defects
import { Effect, Cause, Console } from "effect"

// Simulating a runtime error
const task = Effect.dieMessage("Boom!")

const program = Effect.catchAllDefect(task, (defect) => {
  if (Cause.isRuntimeException(defect)) {
    return Console.log(
      `RuntimeException defect caught: ${defect.message}`
    )
  }
  return Console.log("Unknown defect caught.")
})

// We get an Exit.Success because we caught all defects
// Effect.runPromiseExit(program).then(console.log)
// Output:
// RuntimeException defect caught: Boom!
// {
//   _id: "Exit",
//   _tag: "Success",
//   value: undefined
// }
```

**Signature**

```ts
declare const catchAllDefect: { <A2, E2, R2>(f: (defect: unknown) => Effect<A2, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (defect: unknown) => Effect<A2, E2, R2>): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3511)

Since v2.0.0