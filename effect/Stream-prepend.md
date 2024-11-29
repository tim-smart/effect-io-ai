# prepend

Emits the provided chunk before emitting any other value.

To import and use `prepend` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.prepend
undefined

**Signature**

```ts
export declare const prepend: {
  <B>(values: Chunk.Chunk<B>): <A, E, R>(self: Stream<A, E, R>) => Stream<B | A, E, R>
  <A, E, R, B>(self: Stream<A, E, R>, values: Chunk.Chunk<B>): Stream<A | B, E, R>
}
```
