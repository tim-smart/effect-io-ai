# bufferChunks

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` chunks in a queue.

To import and use `bufferChunks` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.bufferChunks
```

**Signature**

```ts
export declare const bufferChunks: {
  (capacity: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Stream<R, E, A>
}
```