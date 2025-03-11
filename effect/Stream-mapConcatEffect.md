## mapConcatEffect

Effectfully maps each element to an iterable, and flattens the iterables
into the output of this stream.

**Signature**

```ts
declare const mapConcatEffect: { <A, A2, E2, R2>(f: (a: A) => Effect.Effect<Iterable<A2>, E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<Iterable<A2>, E2, R2>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2871)

Since v2.0.0