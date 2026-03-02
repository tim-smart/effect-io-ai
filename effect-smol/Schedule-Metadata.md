Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Metadata

Extended metadata that includes both input metadata and the output value from the schedule.

**Example**

```ts
import { Console, Duration, Effect, Schedule } from "effect"

// Custom schedule that logs metadata including output
const loggingSchedule = Schedule.unfold(0, (n) => Effect.succeed(n + 1)).pipe(
  Schedule.addDelay(() => Effect.succeed(Duration.millis(100))),
  Schedule.tapOutput((output) => {
    return Console.log(
      `Output: ${output}`
    )
  })
)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.succeed("task completed"),
    loggingSchedule.pipe(Schedule.take(3))
  )
})

// Output logs will show:
// "Output: 0, Attempt: 1, Elapsed: 0ms, Since previous: 0ms"
// "Output: 1, Attempt: 2, Elapsed: 100ms, Since previous: 100ms"
// "Output: 2, Attempt: 3, Elapsed: 200ms, Since previous: 100ms"
```

**Signature**

```ts
export interface Metadata<Output = unknown, Input = unknown> extends InputMetadata<Input> {
  readonly output: Output
  readonly duration: Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L160)

Since v4.0.0