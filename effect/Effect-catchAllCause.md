# catchAllCause

Handles both recoverable and unrecoverable errors by providing a recovery
effect.

**When to Use**

The `catchAllCause` function allows you to handle all errors, including
unrecoverable defects, by providing a recovery effect. The recovery logic is
based on the `Cause` of the error, which provides detailed information about
the failure.

**When to Recover from Defects**

Defects are unexpected errors that typically shouldn't be recovered from, as
they often indicate serious issues. However, in some cases, such as
dynamically loaded plugins, controlled recovery might be needed.

To import and use `catchAllCause` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.catchAllCause
undefined

**Example**

```ts
// Title: Recovering from All Errors
import { Cause, Effect } from "effect"

// Define an effect that may fail with a recoverable or unrecoverable error
const program = Effect.fail("Something went wrong!")

// Recover from all errors by examining the cause
const recovered = program.pipe(
  Effect.catchAllCause((cause) =>
    Cause.isFailType(cause)
      ? Effect.succeed("Recovered from a regular error")
      : Effect.succeed("Recovered from a defect")
  )
)

Effect.runPromise(recovered).then(console.log)
// Output: "Recovered from a regular error"
```

**Signature**

```ts
export declare const catchAllCause: {
  <E, A2, E2, R2>(
    f: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>
  ): <A, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2, R2 | R>
  <A, E, R, A2, E2, R2>(
    self: Effect<A, E, R>,
    f: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>
  ): Effect<A | A2, E2, R | R2>
}
```
