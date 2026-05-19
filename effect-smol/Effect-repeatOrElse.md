Package: `effect`<br />
Module: `Effect`<br />

## Effect.repeatOrElse

Repeats an effect according to a schedule and runs a fallback effect if
repetition fails before the schedule completes.

**Details**

If the repeated effect or schedule step fails, `orElse` receives the failure
and the latest schedule metadata when at least one schedule step has run;
otherwise it receives `None`. If the schedule completes normally, the
returned effect succeeds with the schedule's output.

**Example** (Usage)

```ts
import { Console, Effect, Option, Schedule } from "effect"

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7046)

Since v2.0.0