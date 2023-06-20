# as

Maps the success values of this stream to the specified constant value.

To import and use `as` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.as
```

**Signature**

```ts
export declare const as: {
  <B>(value: B): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, B>
  <R, E, A, B>(self: Stream<R, E, A>, value: B): Stream<R, E, B>
}
```
