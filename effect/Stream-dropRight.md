# dropRight

Drops the last specified number of elements from this stream.

To import and use `dropRight` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.dropRight
undefined

**Signature**

```ts
export declare const dropRight: {
  (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>
}
```
