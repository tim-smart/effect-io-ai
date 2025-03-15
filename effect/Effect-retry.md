Package: `effect`<br />
Module: `Effect`<br />

## Effect.retry

Retries a failing effect based on a defined retry policy.

**Details**

The `Effect.retry` function takes an effect and a `Schedule` policy,
and will automatically retry the effect if it fails, following the rules of
the policy.

If the effect ultimately succeeds, the result will be returned.

If the maximum retries are exhausted and the effect still fails, the failure
is propagated.

**When to Use**

This can be useful when dealing with intermittent failures, such as network
issues or temporary resource unavailability. By defining a retry policy, you
can control the number of retries, the delay between them, and when to stop
retrying.

**Example** (Retrying with a Fixed Delay)

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

**Example** (Retrying a Task up to 5 times)

```ts
import { Effect } from "effect"

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

// Retry the task up to 5 times
Effect.runPromise(Effect.retry(task, { times: 5 })).then(console.log)
// Output:
// failure
// failure
// failure
// success
```

**Example** (Retrying Until a Specific Condition is Met)

```ts
import { Effect } from "effect"

let count = 0

// Define an effect that simulates varying error on each invocation
const action = Effect.failSync(() => {
  console.log(`Action called ${++count} time(s)`)
  return `Error ${count}`
})

// Retry the action until a specific condition is met
const program = Effect.retry(action, {
  until: (err) => err === "Error 3"
})

Effect.runPromiseExit(program).then(console.log)
// Output:
// Action called 1 time(s)
// Action called 2 time(s)
// Action called 3 time(s)
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: 'Error 3' }
// }
```

**See**

- `retryOrElse` for a version that allows you to run a fallback.
- `repeat` if your retry condition is based on successful outcomes rather than errors.

**Signature**

```ts
declare const retry: { <E, O extends NoExcessProperties<Retry.Options<E>, O>>(options: O): <A, R>(self: Effect<A, E, R>) => Retry.Return<R, E, A, O>; <B, E, R1>(policy: Schedule.Schedule<B, NoInfer<E>, R1>): <A, R>(self: Effect<A, E, R>) => Effect<A, E, R1 | R>; <A, E, R, O extends NoExcessProperties<Retry.Options<E>, O>>(self: Effect<A, E, R>, options: O): Retry.Return<R, E, A, O>; <A, E, R, B, R1>(self: Effect<A, E, R>, policy: Schedule.Schedule<B, E, R1>): Effect<A, E, R1 | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L4383)

Since v2.0.0