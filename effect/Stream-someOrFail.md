Package: `effect`<br />
Module: `Stream`<br />

## Stream.someOrFail

Extracts the optional value, or fails with the given error 'e'.

**Signature**

```ts
declare const someOrFail: { <E2>(error: LazyArg<E2>): <A, E, R>(self: Stream<Option.Option<A>, E, R>) => Stream<A, E2 | E, R>; <A, E, R, E2>(self: Stream<Option.Option<A>, E, R>, error: LazyArg<E2>): Stream<A, E | E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4702)

Since v2.0.0