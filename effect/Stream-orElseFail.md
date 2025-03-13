Package: `effect`<br />
Module: `Stream`<br />

## Stream.orElseFail

Fails with given error in case this one fails with a typed error.

See also `Stream.catchAll`.

**Signature**

```ts
declare const orElseFail: { <E2>(error: LazyArg<E2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E2, R>; <A, E, R, E2>(self: Stream<A, E, R>, error: LazyArg<E2>): Stream<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3309)

Since v2.0.0