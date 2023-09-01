# prepend

Emits the provided chunk before emitting any other value.

To import and use `prepend` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.prepend
```

**Signature**

```ts
export declare const prepend: {
  <B>(values: Chunk.Chunk<B>): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, B | A>
  <R, E, A, B>(self: Stream<R, E, A>, values: Chunk.Chunk<B>): Stream<R, E, A | B>
}
```
