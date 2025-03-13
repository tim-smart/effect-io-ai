Package: `effect`<br />
Module: `Stream`<br />

## Stream.find

Finds the first element emitted by this stream that satisfies the provided
predicate.

**Signature**

```ts
declare const find: { <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>; <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>; <A, E, R, B extends A>(self: Stream<A, E, R>, refinement: Refinement<A, B>): Stream<B, E, R>; <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1739)

Since v2.0.0