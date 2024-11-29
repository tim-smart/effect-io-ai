# timeoutTo

The `timeoutTo` function provides more flexibility than
`timeout` by allowing you to define different outcomes for both
successful and timed-out operations.

This function is useful when you want to handle the results of an effect
differently depending on whether the operation completes within the given
time frame or not. It lets you specify `onSuccess` and `onTimeout` handlers,
where the success handler processes the result if the effect completes on
time, and the timeout handler handles the scenario where the effect exceeds
the specified duration.

`timeoutTo` can be used to customize the result of an effect,
particularly when you need to handle success and timeouts in distinct ways,
such as using the `Either` data type to distinguish between successful
results and timeouts.

To import and use `timeoutTo` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.timeoutTo
undefined

**Example**

```ts
import { Effect, Either } from "effect"

const task = Effect.gen(function* () {
  console.log("Start processing...")
  yield* Effect.sleep("2 seconds") // Simulates a delay in processing
  console.log("Processing complete.")
  return "Result"
})

const program = task.pipe(
  Effect.timeoutTo({
    duration: "1 second",
    onSuccess: (result): Either.Either<string, string> => Either.right(result),
    onTimeout: (): Either.Either<string, string> => Either.left("Timed out!")
  })
)

Effect.runPromise(program).then(console.log)
// Output:
// Start processing...
// {
//   _id: "Either",
//   _tag: "Left",
//   left: "Timed out!"
// }
```

**Signature**

```ts
export declare const timeoutTo: {
  <A, B, B1>(options: {
    readonly onTimeout: LazyArg<B1>
    readonly onSuccess: (a: A) => B
    readonly duration: Duration.DurationInput
  }): <E, R>(self: Effect<A, E, R>) => Effect<B | B1, E, R>
  <A, E, R, B1, B>(
    self: Effect<A, E, R>,
    options: {
      readonly onTimeout: LazyArg<B1>
      readonly onSuccess: (a: A) => B
      readonly duration: Duration.DurationInput
    }
  ): Effect<B1 | B, E, R>
}
```
