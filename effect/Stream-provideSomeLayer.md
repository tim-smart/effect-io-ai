Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideSomeLayer

Splits the context into two parts, providing one part using the
specified layer and leaving the remainder `R0`.

**Signature**

```ts
declare const provideSomeLayer: { <RIn, E2, ROut>(layer: Layer.Layer<ROut, E2, RIn>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, RIn | Exclude<R, ROut>>; <A, E, R, RIn, E2, ROut>(self: Stream<A, E, R>, layer: Layer.Layer<ROut, E2, RIn>): Stream<A, E | E2, RIn | Exclude<R, ROut>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3711)

Since v2.0.0