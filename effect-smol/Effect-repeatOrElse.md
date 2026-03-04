Package: `effect`<br />
Module: `Effect`<br />

## Effect.repeatOrElse

Repeats an effect with a schedule, handling failures using a custom handler.

**Details**

This function allows you to execute an effect repeatedly based on a specified
schedule. If the effect fails at any point, a custom failure handler is
invoked. The handler is provided with both the failure value and the output
of the schedule at the time of failure. If the effect fails immediately, the
schedule will never be executed and the output provided to the handler will
be `None`. This enables advanced error recovery or alternative fallback logic
while maintaining flexibility in how repetitions are handled.

For example, using a schedule with `recurs(2)` will allow for two additional
repetitions after the initial execution, provided the effect succeeds. If a
failure occurs during any iteration, the failure handler is invoked to handle
the situation.

**Example**

```ts
import { Console, Effect, Schedule } from "effect"
import * as Option from "effect/Option"

let attempt = 0
const task = Effect.gen(function*() {
  attempt++
  if (attempt <= 2) {
    yield* Console.log(`Attempt ${attempt} failed`)
    return yield* Effect.fail(`Error ${attempt}`)
  }
  yield* Console.log(`Attempt ${attempt} succeeded`)
  return "success"
})

const program = Effect.repeatOrElse(
  task,
  Schedule.recurs(3),
  (error, attempts) =>
    Console.log(
      `Final failure: ${error}, after ${
        Option.getOrElse(attempts, () => 0)
      } attempts`
    ).pipe(Effect.map(() => 0))
)
```

**Signature**

```ts
declare const repeatOrElse: { <R2, A, B, E, E2, E3, R3>(schedule: Schedule<B, A, E2, R2>, orElse: (error: E | E2, option: Option<B>) => Effect<B, E3, R3>): <R>(self: Effect<A, E, R>) => Effect<B, E3, R | R2 | R3>; <A, E, R, R2, B, E2, E3, R3>(self: Effect<A, E, R>, schedule: Schedule<B, A, E2, R2>, orElse: (error: E | E2, option: Option<B>) => Effect<B, E3, R3>): Effect<B, E3, R | R2 | R3>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7212)

Since v2.0.0