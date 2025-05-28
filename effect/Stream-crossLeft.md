Package: `effect`<br />
Module: `Stream`<br />

## Stream.crossLeft

Composes this stream with the specified stream to create a cartesian
product of elements, but keeps only elements from `left` stream. The `right`
stream would be run multiple times, for every element in the `left` stream.

See also `Stream.zipLeft` for the more common point-wise variant.

**Signature**

```ts
declare const crossLeft: { <AR, ER, RR>(right: Stream<AR, ER, RR>): <AL, EL, RL>(left: Stream<AL, EL, RL>) => Stream<AL, EL | ER, RL | RR>; <AL, EL, RL, AR, ER, RR>(left: Stream<AL, EL, RL>, right: Stream<AR, ER, RR>): Stream<AL, EL | ER, RL | RR>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1141)

Since v2.0.0