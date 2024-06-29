# repeat

Repeats the entire stream using the specified schedule. The stream will
execute normally, and then repeat again according to the provided schedule.

To import and use `repeat` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.repeat
```

**Signature**

```ts
export declare const repeat: {
  <B, R2>(schedule: Schedule.Schedule<B, unknown, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>
  <A, E, R, B, R2>(self: Stream<A, E, R>, schedule: Schedule.Schedule<B, unknown, R2>): Stream<A, E, R | R2>
}
```
