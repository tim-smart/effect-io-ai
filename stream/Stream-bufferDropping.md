# bufferDropping

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` elements in a dropping queue.

To import and use `bufferDropping` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.bufferDropping
```

**Signature**

```ts
export declare const bufferDropping: {
  (capacity: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Stream<R, E, A>
}
```
