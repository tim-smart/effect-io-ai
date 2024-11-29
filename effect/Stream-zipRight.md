# zipRight

Zips this stream with another point-wise, but keeps only the outputs of the
`right` stream.

The new stream will end when one of the sides ends.

To import and use `zipRight` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipRight
undefined

**Signature**

```ts
export declare const zipRight: {
  <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, ER | EL, RR | RL>
  <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>
}
```
