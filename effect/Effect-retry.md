# retry

Retries a failing effect based on a defined retry policy.

The `retry` function allows you to retry a failing effect multiple
times according to a specified policy. This can be useful when dealing with
intermittent failures, such as network issues or temporary resource
unavailability. By defining a retry policy, you can control the number of
retries, the delay between them, and when to stop retrying.

The `retry` function takes an effect and a policy, and will automatically
retry the effect if it fails, following the rules of the policy. If the
effect ultimately succeeds, the result will be returned. If the maximum
retries are exhausted and the effect still fails, the failure is propagated.

To import and use `retry` from the "Effect" module:

ts
import \* as Effect from "effect/Effect"
// Can be accessed like this
Effect.retry
undefined

**Example**

```ts
import { Effect, Schedule } from "effect"

let count = 0

// Simulates an effect with possible failures
const task = Effect.async<string, Error>((resume) => {
  if (count <= 2) {
    count++
    console.log("failure")
    resume(Effect.fail(new Error()))
  } else {
    console.log("success")
    resume(Effect.succeed("yay!"))
  }
})

// Define a repetition policy using a fixed delay between retries
const policy = Schedule.fixed("100 millis")

const repeated = Effect.retry(task, policy)

Effect.runPromise(repeated).then(console.log)
// Output:
// failure
// failure
// failure
// success
// yay!
```

**Signature**

```ts
export declare const retry: {
  <E, O extends Retry.Options<E>>(options: O): <A, R>(self: Effect<A, E, R>) => Retry.Return<R, E, A, O>
  <B, E, R1>(policy: Schedule.Schedule<B, NoInfer<E>, R1>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R1 | R>
  <A, E, R, O extends Retry.Options<E>>(self: Effect<A, E, R>, options: O): Retry.Return<R, E, A, O>
  <A, E, R, B, R1>(self: Effect<A, E, R>, policy: Schedule.Schedule<B, E, R1>): Effect<A, E, R1 | R>
}
```
