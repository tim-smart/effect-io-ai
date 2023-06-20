# bufferSliding

Allows a faster producer to progress independently of a slower consumer by
buffering up to `capacity` elements in a sliding queue.

To import and use `bufferSliding` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.bufferSliding
```

**Signature**

```ts
export declare const bufferSliding: {
  (capacity: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, capacity: number): Stream<R, E, A>
}
```
