Package: `effect`<br />
Module: `Stream`<br />

## Stream.tapErrorCause

Returns a stream that effectfully "peeks" at the cause of failure of the
stream.

**Signature**

```ts
declare const tapErrorCause: { <E, X, E2, R2>(f: (cause: Cause.Cause<NoInfer<E>>) => Effect.Effect<X, E2, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E | E2, R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, f: (cause: Cause.Cause<E>) => Effect.Effect<X, E2, R2>): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4957)

Since v2.0.0