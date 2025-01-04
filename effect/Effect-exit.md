# exit

Encapsulates both success and failure of an `Effect` using the `Exit` type.

**Details**

This function converts an effect into one that always succeeds, wrapping its
outcome in the `Exit` type. The `Exit` type allows explicit handling of both
success (`Exit.Success`) and failure (`Exit.Failure`) cases.

The failure is no longer propagated directly but encapsulated inside the
`Exit.Failure` type. This makes the resulting effect robust and incapable of
direct failure (the error type is set to `never`).

This function is useful for managing and reasoning about effects with complex
outcomes, as it allows for detailed introspection of errors, including
defects and unexpected failures.

To import and use `exit` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.exit
```

**Example**

```ts
import { Effect, Cause, Console, Exit } from "effect"

// Simulating a runtime error
const task = Effect.dieMessage("Boom!")

const program = Effect.gen(function* () {
  const exit = yield* Effect.exit(task)
  if (Exit.isFailure(exit)) {
    const cause = exit.cause
    if (Cause.isDieType(cause) && Cause.isRuntimeException(cause.defect)) {
      yield* Console.log(`RuntimeException defect caught: ${cause.defect.message}`)
    } else {
      yield* Console.log("Unknown failure caught.")
    }
  }
})

// We get an Exit.Success because we caught all failures
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
export declare const exit: <A, E, R>(self: Effect<A, E, R>) => Effect<Exit.Exit<A, E>, never, R>
```
