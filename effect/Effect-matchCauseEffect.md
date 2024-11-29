# matchCauseEffect

Handles failures with access to the cause and allows performing side effects.

The `matchCauseEffect` function works similarly to {@link matchCause},
but it also allows you to perform additional side effects based on the
failure cause. This function provides access to the complete cause of the
failure, making it possible to differentiate between various failure types,
and allows you to respond accordingly while performing side effects (like
logging or other operations).

To import and use `matchCauseEffect` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.matchCauseEffect
undefined

**Example**

```ts
import { Effect, Console } from "effect"

const task: Effect.Effect<number, Error> = Effect.die("Uh oh!")

const program = Effect.matchCauseEffect(task, {
  onFailure: (cause) => {
    switch (cause._tag) {
      case "Fail":
        // Handle standard failure with a logged message
        return Console.log(`Fail: ${cause.error.message}`)
      case "Die":
        // Handle defects (unexpected errors) by logging the defect
        return Console.log(`Die: ${cause.defect}`)
      case "Interrupt":
        // Handle interruption and log the fiberId that was interrupted
        return Console.log(`${cause.fiberId} interrupted!`)
    }
    // Fallback for other causes
    return Console.log("failed due to other causes")
  },
  onSuccess: (value) =>
    // Log success if the task completes successfully
    Console.log(`succeeded with ${value} value`)
})

Effect.runSync(program)
// Output: "Die: Uh oh!"
```

**Signature**

```ts
export declare const matchCauseEffect: {
  <E, A2, E2, R2, A, A3, E3, R3>(options: {
    readonly onFailure: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>
    readonly onSuccess: (a: A) => Effect<A3, E3, R3>
  }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R2 | R3 | R>
  <A, E, R, A2, E2, R2, A3, E3, R3>(
    self: Effect<A, E, R>,
    options: {
      readonly onFailure: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>
      readonly onSuccess: (a: A) => Effect<A3, E3, R3>
    }
  ): Effect<A2 | A3, E2 | E3, R2 | R3 | R>
}
```
