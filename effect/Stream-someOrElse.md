## someOrElse

Extracts the optional value, or returns the given 'default'.

**Signature**

```ts
declare const someOrElse: { <A2>(fallback: LazyArg<A2>): <A, E, R>(self: Stream<Option.Option<A>, E, R>) => Stream<A2 | A, E, R>; <A, E, R, A2>(self: Stream<Option.Option<A>, E, R>, fallback: LazyArg<A2>): Stream<A | A2, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4656)

Since v2.0.0