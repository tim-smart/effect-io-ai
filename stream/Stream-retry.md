# retry

When the stream fails, retry it according to the given schedule

This retries the entire stream, so will re-execute all of the stream's
acquire operations.

The schedule is reset as soon as the first element passes through the
stream again.

To import and use `retry` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.retry
```

**Signature**

```ts
export declare const retry: {
  <R2, E, _>(schedule: Schedule.Schedule<R2, E, _>): <R, A>(self: Stream<R, E, A>) => Stream<R2 | R, E, A>
  <R, A, R2, E, _>(self: Stream<R, E, A>, schedule: Schedule.Schedule<R2, E, _>): Stream<R | R2, E, A>
}
```