Package: `effect`<br />
Module: `Effect`<br />

## Effect.repeatOrElse

Repeats an effect with a schedule, handling failures using a custom handler.

**Details**

This function allows you to execute an effect repeatedly based on a specified
schedule. If the effect fails at any point, a custom failure handler is
invoked. The handler is provided with both the failure value and the output
of the schedule at the time of failure. This enables advanced error recovery
or alternative fallback logic while maintaining flexibility in how
repetitions are handled.

For example, using a schedule with `recurs(2)` will allow for two additional
repetitions after the initial execution, provided the effect succeeds. If a
failure occurs during any iteration, the failure handler is invoked to handle
the situation.

**Example**

```ts
import { Effect, Schedule } from "effect"

let count = 0

// Define an async effect that simulates an action with possible failures
const action = Effect.async<string, string>((resume) => {
  if (count > 1) {
    console.log("failure")
    resume(Effect.fail("Uh oh!"))
  } else {
    count++
    console.log("success")
    resume(Effect.succeed("yay!"))
  }
})

const policy = Schedule.addDelay(
  Schedule.recurs(2), // Repeat for a maximum of 2 times
  () => "100 millis" // Add a delay of 100 milliseconds between repetitions
)

const program = Effect.repeatOrElse(action, policy, () =>
  Effect.sync(() => {
    console.log("orElse")
    return count - 1
  })
)

Effect.runPromise(program).then((n) => console.log(`repetitions: ${n}`))
```

**Signature**

```ts
declare const repeatOrElse: { <R2, A, B, E, E2, R3>(schedule: Schedule.Schedule<B, A, R2>, orElse: (error: E, option: Option.Option<B>) => Effect<B, E2, R3>): <R>(self: Effect<A, E, R>) => Effect<B, E2, R2 | R3 | R>; <A, E, R, R2, B, E2, R3>(self: Effect<A, E, R>, schedule: Schedule.Schedule<B, A, R2>, orElse: (error: E, option: Option.Option<B>) => Effect<B, E2, R3>): Effect<B, E2, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10292)

Since v2.0.0