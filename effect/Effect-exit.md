# exit

Transforms an effect to encapsulate both failure and success using the `Exit`
data type.

**Details**

`exit` wraps an effect's success or failure inside an `Exit` type, allowing
you to handle both cases explicitly.

The resulting effect cannot fail because the failure is encapsulated within
the `Exit.Failure` type. The error type is set to `never`, indicating that
the effect is structured to never fail directly.

To import and use `exit` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.exit
undefined

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
Effect.runPromiseExit(program).then(console.log)
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
