# groupedWithin

Partitions the stream with the specified `chunkSize` or until the specified
`duration` has passed, whichever is satisfied first.

To import and use `groupedWithin` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.groupedWithin
```

**Signature**

```ts
export declare const groupedWithin: {
  (
    chunkSize: number,
    duration: Duration.DurationInput
  ): <A, E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
  <A, E, R>(self: Stream<A, E, R>, chunkSize: number, duration: Duration.DurationInput): Stream<Chunk.Chunk<A>, E, R>
}
```
