Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElseIfEmptyStream

Switches to the provided stream in case this one is empty.

**Signature**

```ts
declare const orElseIfEmptyStream: { <A2, E2, R2>(stream: LazyArg<Stream<A2, E2, R2>>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, stream: LazyArg<Stream<A2, E2, R2>>): Stream<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3343)

Since v2.0.0