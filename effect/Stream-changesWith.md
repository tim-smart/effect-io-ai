# changesWith

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using the specified function to determine whether
two elements are equal.

To import and use `changesWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.changesWith
```

**Signature**

```ts
export declare const changesWith: {
  <A>(f: (x: A, y: A) => boolean): <R, E>(self: Stream<R, E, A>) => Stream<R, E, A>
  <R, E, A>(self: Stream<R, E, A>, f: (x: A, y: A) => boolean): Stream<R, E, A>
}
```
