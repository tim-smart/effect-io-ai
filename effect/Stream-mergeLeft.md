# mergeLeft

Merges this stream and the specified stream together, discarding the values
from the right stream.

To import and use `mergeLeft` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeLeft
```

**Signature**

```ts
export declare const mergeLeft: {
  <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AL, ER | EL, RR | RL>
  <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AL, EL | ER, RL | RR>
}
```
