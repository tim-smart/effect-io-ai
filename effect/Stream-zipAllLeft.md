Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipAllLeft

Zips this stream with another point-wise, and keeps only elements from this
stream.

The provided default value will be used if the other stream ends before
this one.

**Signature**

```ts
declare const zipAllLeft: { <A2, E2, R2, A>(that: Stream<A2, E2, R2>, defaultLeft: A): <E, R>(self: Stream<A, E, R>) => Stream<A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>, defaultLeft: A): Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5695)

Since v2.0.0