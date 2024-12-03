# fromSchedule

Creates a stream from a `Schedule` that does not require any further
input. The stream will emit an element for each value output from the
schedule, continuing for as long as the schedule continues.

To import and use `fromSchedule` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.fromSchedule
```

**Example**

```ts
import { Effect, Schedule, Stream } from "effect"

// Emits values every 1 second for a total of 5 emissions
const schedule = Schedule.spaced("1 second").pipe(Schedule.compose(Schedule.recurs(5)))

const stream = Stream.fromSchedule(schedule)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0, 1, 2, 3, 4 ] }
```

**Signature**

```ts
export declare const fromSchedule: <A, R>(schedule: Schedule.Schedule<A, unknown, R>) => Stream<A, never, R>
```
