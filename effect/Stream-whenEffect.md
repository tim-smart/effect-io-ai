Package: `effect`<br />
Module: `Stream`<br />

## Stream.whenEffect

Returns the stream if the given effectful condition is satisfied, otherwise
returns an empty stream.

**Signature**

```ts
declare const whenEffect: { <E2, R2>(effect: Effect.Effect<boolean, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, E2, R2>(self: Stream<A, E, R>, effect: Effect.Effect<boolean, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5558)

Since v2.0.0