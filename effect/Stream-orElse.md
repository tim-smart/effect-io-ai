Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElse

Switches to the provided stream in case this one fails with a typed error.

See also `Stream.catchAll`.

**Signature**

```ts
declare const orElse: { <A2, E2, R2>(that: LazyArg<Stream<A2, E2, R2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: LazyArg<Stream<A2, E2, R2>>): Stream<A | A2, E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3279)

Since v2.0.0