# evaluateBuffer

Like `evaluate`, but with a configurable `bufferSize` parameter.

To import and use `evaluateBuffer` from the "GroupBy" module:

```ts
import * as GroupBy from '@effect/stream/GroupBy'

// Can be accessed like this
GroupBy.evaluateBuffer
```

**Signature**

```ts
export declare const evaluateBuffer: {
  <K, E, V, R2, E2, A>(
    f: (key: K, stream: Stream.Stream<never, E, V>) => Stream.Stream<R2, E2, A>,
    bufferSize: number
  ): <R>(self: GroupBy<R, E, K, V>) => Stream.Stream<R2 | R, E | E2, A>
  <R, K, E, V, R2, E2, A>(
    self: GroupBy<R, E, K, V>,
    f: (key: K, stream: Stream.Stream<never, E, V>) => Stream.Stream<R2, E2, A>,
    bufferSize: number
  ): Stream.Stream<R | R2, E | E2, A>
}
```
