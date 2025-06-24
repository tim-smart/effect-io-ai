Package: `effect`<br />
Module: `Stream`<br />

## Stream.whenCaseEffect

Returns the stream when the given partial function is defined for the given
effectful value, otherwise returns an empty stream.

**Signature**

```ts
declare const whenCaseEffect: { <A, A2, E2, R2>(pf: (a: A) => Option.Option<Stream<A2, E2, R2>>): <E, R>(self: Effect.Effect<A, E, R>) => Stream<A2, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect.Effect<A, E, R>, pf: (a: A) => Option.Option<Stream<A2, E2, R2>>): Stream<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5576)

Since v2.0.0