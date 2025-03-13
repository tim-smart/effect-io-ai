Package: `effect`<br />
Module: `Stream`<br />

## Stream.mapError

Transforms the errors emitted by this stream using `f`.

**Signature**

```ts
declare const mapError: { <E, E2>(f: (error: E) => E2): <A, R>(self: Stream<A, E, R>) => Stream<A, E2, R>; <A, E, R, E2>(self: Stream<A, E, R>, f: (error: E) => E2): Stream<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L2930)

Since v2.0.0