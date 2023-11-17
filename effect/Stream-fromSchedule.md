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

**Signature**

```ts
export declare const fromSchedule: <R, A>(schedule: Schedule.Schedule<R, unknown, A>) => Stream<R, never, A>
```
