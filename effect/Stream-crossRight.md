# crossRight

Composes this stream with the specified stream to create a cartesian
product of elements, but keeps only elements from the `right` stream. The
`left` stream would be run multiple times, for every element in the `right`
stream.

See also `Stream.zipRight` for the more common point-wise variant.

To import and use `crossRight` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.crossRight
```

**Signature**

```ts
export declare const crossRight: {
  <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, EL | ER, RL | RR>
  <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>
}
```
