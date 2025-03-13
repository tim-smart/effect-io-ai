Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapAccumEffect

Statefully and effectfully maps over the elements of this stream to produce
new elements.

**Signature**

```ts
declare const mapAccumEffect: { <S, A, A2, E2, R2>(s: S, f: (s: S, a: A) => Effect.Effect<readonly [S, A2], E2, R2>): <E, R>(self: Stream<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, S, A2, E2, R2>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => Effect.Effect<readonly [S, A2], E2, R2>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2754)

Since v2.0.0