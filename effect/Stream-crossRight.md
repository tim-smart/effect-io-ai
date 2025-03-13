Package: `effect`<br />
Module: `Stream`<br />

## Stream.crossRight

Composes this stream with the specified stream to create a cartesian
product of elements, but keeps only elements from the `right` stream. The
`left` stream would be run multiple times, for every element in the `right`
stream.

See also `Stream.zipRight` for the more common point-wise variant.

**Signature**

```ts
declare const crossRight: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AR, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AR, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1156)

Since v2.0.0