# dropRight

Drops the last specified number of elements from this stream.

To import and use `dropRight` from the "Stream" module:

```ts
import * as Stream from '@effect/stream/Stream'

// Can be accessed like this
Stream.dropRight
```

**Signature**

```ts
export declare const dropRight: {
  (n: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, n: number): Stream<R, E, A>
}
```
