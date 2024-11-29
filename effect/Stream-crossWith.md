# crossWith

Composes this stream with the specified stream to create a cartesian
product of elements with a specified function. The `right` stream would be
run multiple times, for every element in the `left` stream.

See also `Stream.zipWith` for the more common point-wise variant.

To import and use `crossWith` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.crossWith
undefined

**Signature**

```ts
export declare const crossWith: {
  <AR, ER, RR, AL, A>(
    right: Stream<AR, ER, RR>,
    f: (left: AL, right: AR) => A
  ): <EL, RL>(left: Stream<AL, EL, RL>) => Stream<A, EL | ER, RL | RR>
  <AL, EL, RL, AR, ER, RR, A>(
    left: Stream<AL, EL, RL>,
    right: Stream<AR, ER, RR>,
    f: (left: AL, right: AR) => A
  ): Stream<A, EL | ER, RL | RR>
}
```
