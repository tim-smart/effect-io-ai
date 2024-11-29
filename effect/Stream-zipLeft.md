# zipLeft

Zips this stream with another point-wise, but keeps only the outputs of
`left` stream.

The new stream will end when one of the sides ends.

To import and use `zipLeft` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.zipLeft
undefined

**Signature**

```ts
export declare const zipLeft: {
  <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AL, ER | EL, RR | RL>
  <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AL, EL | ER, RL | RR>
}
```
