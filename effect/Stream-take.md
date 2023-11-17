# take

Takes the specified number of elements from this stream.

To import and use `take` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.take
```

**Signature**

```ts
export declare const take: {
  (n: number): <R, E, A>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, n: number): Stream<R, E, A>
}
```
