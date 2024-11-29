# timeoutFailCause

The `timeoutFailCause` function allows you to specify a custom defect
to be thrown when a timeout occurs during the execution of an effect.

This function helps in handling timeouts as exceptional cases in your program
by generating a custom defect when the operation exceeds the specified time
limit. You can define a `duration` and a `onTimeout` function that produces a
defect (typically using `Cause.die`) which will be thrown instead of a
default timeout error.

This is particularly useful when you need to treat timeouts as critical
failures in your application, allowing for more precise error handling.

To import and use `timeoutFailCause` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeoutFailCause
undefined

**Example**

```ts
import { Effect, Cause } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

const program = task.pipe(
  Effect.timeoutFailCause({
    duration: "1 second",
    onTimeout: () => Cause.die("Timed out!") // Custom defect for timeout
  })
)

Effect.runPromiseExit(program).then(console.log)
// Output:
// Start processing...
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Die', defect: 'Timed out!' }
// }
```

**Signature**

```ts
export declare const timeoutFailCause: {
  <E1>(options: {
    readonly onTimeout: LazyArg<Cause.Cause<E1>>
    readonly duration: Duration.DurationInput
  }): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E1 | E, R>
  <A, E, R, E1>(
    self: Effect<A, E, R>,
    options: { readonly onTimeout: LazyArg<Cause.Cause<E1>>; readonly duration: Duration.DurationInput }
  ): Effect<A, E | E1, R>
}
```
