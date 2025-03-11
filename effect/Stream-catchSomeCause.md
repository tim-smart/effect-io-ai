## catchSomeCause

Switches over to the stream produced by the provided function in case this
one fails with some errors. Allows recovery from all causes of failure,
including interruption if the stream is uninterruptible.

**Signature**

```ts
declare const catchSomeCause: { <E, A2, E2, R2>(pf: (cause: Cause.Cause<E>) => Option.Option<Stream<A2, E2, R2>>): <A, R>(self: Stream<A, E, R>) => Stream<A2 | A, E | E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, pf: (cause: Cause.Cause<E>) => Option.Option<Stream<A2, E2, R2>>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L892)

Since v2.0.0