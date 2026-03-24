Package: `effect`<br />
Module: `Schedule`<br />

## Schedule.elapsed

A schedule that always recurs and returns the total elapsed duration since the first recurrence.

This schedule never stops and outputs the cumulative time that has passed since the schedule
started executing. Useful for tracking execution time or implementing time-based logic.

**Example**

```ts
import { Console, Duration, Effect, Schedule } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.repeat(
    Console.log("Running task..."),
    Schedule.spaced("1 second").pipe(
      Schedule.both(Schedule.elapsed),
      Schedule.tapOutput(([count, duration]) =>
        Console.log(`Run ${count}, elapsed: ${Duration.toMillis(duration)}ms`)
      ),
      Schedule.take(5)
    )
  )
})
```

**Signature**

```ts
declare const elapsed: Schedule<Duration.Duration, unknown, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schedule.ts#L1910)

Since v2.0.0