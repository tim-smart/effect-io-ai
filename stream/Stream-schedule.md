# schedule

Schedules the output of the stream using the provided `schedule`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const schedule: {
  <R2, A>(schedule: Schedule.Schedule<R2, A, unknown>): <R, E>(self: Stream<R, E, A>) => Stream<R2 | R, E, A>
  <R, E, R2, A>(self: Stream<R, E, A>, schedule: Schedule.Schedule<R2, A, unknown>): Stream<R | R2, E, A>
}
```
