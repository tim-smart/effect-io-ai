Package: `effect`<br />
Module: `Stream`<br />

## Stream.catchSome

Switches over to the stream produced by the provided function in case this
one fails with some typed error.

**Signature**

```ts
declare const catchSome: { <E, A2, E2, R2>(pf: (error: E) => Option.Option<Stream<A2, E2, R2>>): <A, R>(self: Stream<A, E, R>) => Stream<A2 | A, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, pf: (error: E) => Option.Option<Stream<A2, E2, R2>>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L796)

Since v2.0.0