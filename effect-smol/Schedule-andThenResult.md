Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.andThenResult

Returns a new `Schedule` that will first execute the left (i.e. `self`)
schedule to completion. Once the left schedule is complete, the right (i.e.
`other`) schedule will be executed to completion.

The output of the resulting schedule is a `Result` where outputs of the
left schedule are emitted as `Result.Err<Output>` and outputs of the right
schedule are emitted as `Result.Ok<Output>`.

**Example**

```ts
import { Console, Effect, Result, Schedule } from "effect"

// Track which phase of the schedule we're in
const phaseTracker = Schedule.andThenResult(
  Schedule.exponential("100 millis").pipe(Schedule.take(2)),
  Schedule.spaced("500 millis").pipe(Schedule.take(2))
)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.gen(function*() {
      yield* Console.log("Task executed")
      return "task-result"
    }),
    phaseTracker.pipe(
      Schedule.tapOutput((result) =>
        Result.match(result, {
          onFailure: (phase1Output) => Console.log(`Phase 1: ${phase1Output}`),
          onSuccess: (phase2Output) => Console.log(`Phase 2: ${phase2Output}`)
        })
      )
    )
  )
})
```

**Signature**

```ts
declare const andThenResult: { <Output2, Input2, Error2, Env2>(other: Schedule<Output2, Input2, Error2, Env2>): <Output, Input, Error, Env>(self: Schedule<Output, Input, Error, Env>) => Schedule<Result.Result<Output2, Output>, Input & Input2, Error | Error2, Env | Env2>; <Output, Input, Error, Env, Output2, Input2, Error2, Env2>(self: Schedule<Output, Input, Error, Env>, other: Schedule<Output2, Input2, Error2, Env2>): Schedule<Result.Result<Output2, Output>, Input & Input2, Error | Error2, Env | Env2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L750)

Since v2.0.0