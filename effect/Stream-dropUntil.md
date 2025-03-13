Package: `effect`<br />
Module: `Stream`<br />

## Stream.dropUntil

Drops all elements of the stream until the specified predicate evaluates to
`true`.

**Signature**

```ts
declare const dropUntil: { <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1390)

Since v2.0.0