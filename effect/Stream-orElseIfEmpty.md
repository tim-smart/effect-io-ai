Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElseIfEmpty

Produces the specified element if this stream is empty.

**Signature**

```ts
declare const orElseIfEmpty: { <A2>(element: LazyArg<A2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E, R>; <A, E, R, A2>(self: Stream<A, E, R>, element: LazyArg<A2>): Stream<A | A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3320)

Since v2.0.0