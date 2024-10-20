# mergeRight

Merges this stream and the specified stream together, discarding the values
from the left stream.

To import and use `mergeRight` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.mergeRight
```

**Signature**

```ts
export declare const mergeRight: {
  <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, ER | EL, RR | RL>
  <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>
}
```
