Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapErrorCause

Transforms the full causes of failures emitted by this stream.

**Signature**

```ts
declare const mapErrorCause: { <E, E2>(f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>; <A, E, R, E2>(self: Stream<A, E, R>, f: (cause: Cause.Cause<E>) => Cause.Cause<E2>): Stream<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2941)

Since v2.0.0