## crossWith

Composes this stream with the specified stream to create a cartesian
product of elements with a specified function. The `right` stream would be
run multiple times, for every element in the `left` stream.

See also `Stream.zipWith` for the more common point-wise variant.

**Signature**

```ts
declare const crossWith: { <AR, ER, RR, AL, A>(right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): <EL, RL>(left: Stream<AL, EL, RL>) => Stream<A, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR, A>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>, f: (left: AL, right: AR) => A): Stream<A, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1171)

Since v2.0.0