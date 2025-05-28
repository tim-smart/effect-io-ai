Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeRight

Merges this stream and the specified stream together, discarding the values
from the left stream.

**Signature**

```ts
declare const mergeRight: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, ER | EL, RR | RL>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3129)

Since v2.0.0