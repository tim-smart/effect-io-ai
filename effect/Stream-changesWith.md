# changesWith

Returns a new stream that only emits elements that are not equal to the
previous element emitted, using the specified function to determine whether
two elements are equal.

To import and use `changesWith` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.changesWith
undefined

**Signature**

```ts
export declare const changesWith: {
  <A>(f: (x: A, y: A) => boolean): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, f: (x: A, y: A) => boolean): Stream<A, E, R>
}
```
