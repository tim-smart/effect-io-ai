Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipRight

Zips this stream with another point-wise, but keeps only the outputs of the
`right` stream.

The new stream will end when one of the sides ends.

**Signature**

```ts
declare const zipRight: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, ER | EL, RR | RL>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L6030)

Since v2.0.0