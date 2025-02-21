# matchCause

Handles failures by matching the cause of failure.

**Details**

The `matchCause` function allows you to handle failures with access to the
full cause of the failure within a fiber.

**When to Use**

This is useful for differentiating between different types of errors, such as
regular failures, defects, or interruptions. You can provide specific
handling logic for each failure type based on the cause.

To import and use `matchCause` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.matchCause
```

**Example**

```ts
// Title: Handling Different Failure Causes
import { Effect } from "effect"

const task: Effect.Effect<number, Error> = Effect.die("Uh oh!")

const program = Effect.matchCause(task, {
  onFailure: (cause) => {
    switch (cause._tag) {
      case "Fail":
        // Handle standard failure
        return `Fail: ${cause.error.message}`
      case "Die":
        // Handle defects (unexpected errors)
        return `Die: ${cause.defect}`
      case "Interrupt":
        // Handle interruption
        return `${cause.fiberId} interrupted!`
    }
    // Fallback for other causes
    return "failed due to other causes"
  },
  onSuccess: (value) =>
    // task completes successfully
    `succeeded with ${value} value`
})

// Effect.runPromise(program).then(console.log)
// Output: "Die: Uh oh!"
```

**Signature**

```ts
export declare const matchCause: {
  <E, A2, A, A3>(options: {
    readonly onFailure: (cause: Cause.Cause<E>) => A2
    readonly onSuccess: (a: A) => A3
  }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, never, R>
  <A, E, R, A2, A3>(
    self: Effect<A, E, R>,
    options: { readonly onFailure: (cause: Cause.Cause<E>) => A2; readonly onSuccess: (a: A) => A3 }
  ): Effect<A2 | A3, never, R>
}
```
