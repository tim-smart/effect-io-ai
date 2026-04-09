Package: `effect`<br />
Module: `Effect`<br />

## Effect.matchCauseEffect

Handles failures with access to the cause and allows performing side effects.

**Details**

The `matchCauseEffect` function works similarly to `matchCause`, but it
also allows you to perform additional side effects based on the failure
cause. This function provides access to the complete cause of the failure,
making it possible to differentiate between various failure types, and allows
you to respond accordingly while performing side effects (like logging or
other operations).

**Example**

```ts
import { Cause, Console, Data, Effect, Result } from "effect"

class TaskError extends Data.TaggedError("TaskError")<{ readonly message: string }> {}

const task = Effect.fail(new TaskError({ message: "Task failed" }))

const program = Effect.matchCauseEffect(task, {
  onFailure: (cause) =>
    Effect.gen(function*() {
      if (Cause.hasFails(cause)) {
        const error = Cause.findError(cause)
        if (Result.isSuccess(error)) {
          yield* Console.log(`Handling error: ${error.success.message}`)
        }
        return "recovered from error"
      } else {
        yield* Console.log("Handling interruption or defect")
        return "recovered from interruption/defect"
      }
    }),
  onSuccess: (value) =>
    Effect.gen(function*() {
      yield* Console.log(`Success: ${value}`)
      return `processed ${value}`
    })
})

Effect.runPromise(program).then(console.log)
// Output:
// Handling error: Task failed
// recovered from error
```

**See**

- `matchCause` if you don't need side effects and only want to handle the result or failure.
- `matchEffect` if you don't need to handle the cause of the failure.

**Signature**

```ts
declare const matchCauseEffect: { <E, A2, E2, R2, A, A3, E3, R3>(options: { readonly onFailure: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): <R>(self: Effect<A, E, R>) => Effect<A2 | A3, E2 | E3, R2 | R3 | R>; <A, E, R, A2, E2, R2, A3, E3, R3>(self: Effect<A, E, R>, options: { readonly onFailure: (cause: Cause.Cause<E>) => Effect<A2, E2, R2>; readonly onSuccess: (a: A) => Effect<A3, E3, R3>; }): Effect<A2 | A3, E2 | E3, R2 | R3 | R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L5366)

Since v2.0.0