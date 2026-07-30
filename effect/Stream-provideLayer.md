Package: `effect`<br />
Module: `Stream`<br />

## Stream.provideLayer

Provides a `Layer` to the stream, which translates it to another level.

**Signature**

```ts
declare const provideLayer: { <RIn, E2, ROut>(layer: Layer.Layer<ROut, E2, RIn>): <A, E>(self: Stream<A, E, ROut>) => Stream<A, E2 | E, RIn>; <A, E, RIn, E2, ROut>(self: Stream<A, E, ROut>, layer: Layer.Layer<ROut, E2, RIn>): Stream<A, E | E2, RIn>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3650)

Since v2.0.0