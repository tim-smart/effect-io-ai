# buffer

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` elements in a queue.

To import and use `buffer` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.buffer
```

**Signature**

```ts
export declare const buffer: {
  (capacity: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Stream<R, E, A>
}
```
