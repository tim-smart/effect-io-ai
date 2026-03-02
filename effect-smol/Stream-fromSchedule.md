Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromSchedule

Creates a stream that emits each output of a schedule that does not require input,
for as long as the schedule continues.

**Example**

```ts
import { Console, Effect, Schedule, Stream } from "effect"

const program = Effect.gen(function*() {
  const schedule = Schedule.spaced("50 millis").pipe(
    Schedule.compose(Schedule.recurs(2))
  )
  const stream = Stream.fromSchedule(schedule)
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 0, 1, 2 ]
```

**Signature**

```ts
declare const fromSchedule: <O, E, R>(schedule: Schedule.Schedule<O, unknown, E, R>) => Stream<O, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1354)

Since v2.0.0