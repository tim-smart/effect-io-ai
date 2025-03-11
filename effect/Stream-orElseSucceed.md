## orElseSucceed

Succeeds with the specified value if this one fails with a typed error.

**Signature**

```ts
declare const orElseSucceed: { <A2>(value: LazyArg<A2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A2 | A, never, R>; <A, E, R, A2>(self: Stream<A, E, R>, value: LazyArg<A2>): Stream<A | A2, never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3353)

Since v2.0.0