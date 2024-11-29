# timeoutFail

The `timeoutFail` function allows you to specify a custom error to be
produced when a timeout occurs during the execution of an effect.

This function enables you to handle timeouts by triggering a specific error,
providing more control over the behavior of your program when time limits are
exceeded. Instead of using a default timeout error, you can define your own
error type and use it to represent the timeout situation in a more meaningful
way.

When you apply `timeoutFail`, you define a duration after which the
effect will timeout. If the effect does not complete in the specified time,
the `onTimeout` function will be executed to generate the custom error.

To import and use `timeoutFail` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeoutFail
undefined

**Example**

```ts
import { Effect } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

class MyTimeoutError {
  readonly _tag = "MyTimeoutError"
}

const program = task.pipe(
  Effect.timeoutFail({
    duration: "1 second",
    onTimeout: () => new MyTimeoutError() // Custom timeout error
  })
)

Effect.runPromiseExit(program).then(console.log)
// Output:
// Start processing...
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Fail',
//     failure: MyTimeoutError { _tag: 'MyTimeoutError' }
//   }
// }
```

**Signature**

```ts
export declare const timeoutFail: {
  <E1>(options: {
    readonly onTimeout: LazyArg<E1>
    readonly duration: Duration.DurationInput
  }): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E1 | E, R>
  <A, E, R, E1>(
    self: Effect<A, E, R>,
    options: { readonly onTimeout: LazyArg<E1>; readonly duration: Duration.DurationInput }
  ): Effect<A, E | E1, R>
}
```
