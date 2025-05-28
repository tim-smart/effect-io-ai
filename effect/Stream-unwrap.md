Package: `effect`<br />
Module: `Stream`<br />

## Stream.unwrap

Creates a stream produced from an `Effect`.

**Signature**

```ts
declare const unwrap: <A, E2, R2, E, R>(effect: Effect.Effect<Stream<A, E2, R2>, E, R>) => Stream<A, E | E2, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5490)

Since v2.0.0