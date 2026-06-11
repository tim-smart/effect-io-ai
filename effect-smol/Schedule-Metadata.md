Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.Metadata

Extended metadata that includes both input metadata and the output value from the schedule.

**Example** (Logging schedule output metadata)

```ts
import { Console, Duration, Effect, Schedule } from "effect"

// Custom schedule that logs metadata and output for each recurrence
const loggingSchedule = Schedule.unfold(0, (n) => Effect.succeed(n + 1)).pipe(
  Schedule.addDelay(() => Effect.succeed(Duration.millis(100))),
  Schedule.collectWhile((metadata) =>
    Console.log(
      `Output: ${metadata.output}, attempt: ${metadata.attempt}, elapsed: ${metadata.elapsed}ms`
    ).pipe(Effect.as(metadata.attempt <= 3))
  )
)

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Effect.succeed("task completed"),
    loggingSchedule.pipe(Schedule.take(3))
  )
})

// Output logs will show:
// Output: 0, attempt: 1, elapsed: 0ms
// Output: 1, attempt: 2, elapsed: 100ms
// Output: 2, attempt: 3, elapsed: 200ms
```

**Signature**

```ts
export interface Metadata<Output = unknown, Input = unknown> extends InputMetadata<Input> {
  readonly output: Output
  readonly duration: Duration.Duration
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L150)

Since v4.0.0