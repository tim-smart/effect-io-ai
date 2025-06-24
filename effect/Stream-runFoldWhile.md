Package: `effect`<br />
Module: `Stream`<br />

## Stream.runFoldWhile

Reduces the elements in the stream to a value of type `S`. Stops the fold
early when the condition is not fulfilled. Example:

**Signature**

```ts
declare const runFoldWhile: { <S, A>(s: S, cont: Predicate<S>, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E, R>; <A, E, R, S>(self: Stream<A, E, R>, s: S, cont: Predicate<S>, f: (s: S, a: A) => S): Effect.Effect<S, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4215)

Since v2.0.0