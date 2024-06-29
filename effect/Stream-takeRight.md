# takeRight

Takes the last specified number of elements from this stream.

To import and use `takeRight` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.takeRight
```

**Signature**

```ts
export declare const takeRight: {
  (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, n: number): Stream<A, E, R>
}
```
