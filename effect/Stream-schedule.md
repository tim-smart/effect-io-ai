# schedule

Schedules the output of the stream using the provided `schedule`.

To import and use `schedule` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.schedule
undefined

**Signature**

```ts
export declare const schedule: {
  <X, A0 extends A, R2, A>(
    schedule: Schedule.Schedule<X, A0, R2>
  ): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>
  <A, E, R, X, A0 extends A, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<X, A0, R2>): Stream<A, E, R | R2>
}
```
