# catchSomeDefect

Recovers from specific defects using a provided partial function.

**Details**

`catchSomeDefect` allows you to handle specific defects, which are
unexpected errors that can cause the program to stop. It uses a partial
function to catch only certain defects and ignores others. The function does
not handle expected errors (such as those caused by {@link fail}) or
interruptions in execution (like those caused by {@link interrupt}).

This function provides a way to handle certain types of defects while
allowing others to propagate and cause failure in the program.

**Note**: There is no sensible way to recover from defects. This method
should be used only at the boundary between Effect and an external system, to
transmit information on a defect for diagnostic or explanatory purposes.

**How the Partial Function Works**

The function provided to `catchSomeDefect` acts as a filter and a handler for defects:

- It receives the defect as an input.
- If the defect matches a specific condition (e.g., a certain error type), the function returns
  an `Option.some` containing the recovery logic.
- If the defect does not match, the function returns `Option.none`, allowing the defect to propagate.

To import and use `catchSomeDefect` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchSomeDefect
```

**Example**

```ts
// Title: Handling Specific Defects
import { Effect, Cause, Option, Console } from "effect"

// Simulating a runtime error
const task = Effect.dieMessage("Boom!")

const program = Effect.catchSomeDefect(task, (defect) => {
  if (Cause.isIllegalArgumentException(defect)) {
    return Option.some(Console.log(`Caught an IllegalArgumentException defect: ${defect.message}`))
  }
  return Option.none()
})

// Since we are only catching IllegalArgumentException
// we will get an Exit.Failure because we simulated a runtime error.
// Effect.runPromiseExit(program).then(console.log)
// Output:
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Die',
//     defect: { _tag: 'RuntimeException' }
//   }
// }
```

**Signature**

```ts
export declare const catchSomeDefect: {
  <A2, E2, R2>(
    pf: (defect: unknown) => Option.Option<Effect<A2, E2, R2>>
  ): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2 | E, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    pf: (defect: unknown) => Option.Option<Effect<A2, E2, R2>>
  ): Effect<A | A2, E | E2, R | R2>
}
```
