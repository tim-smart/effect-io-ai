## runFold

Executes a pure fold over the stream of values - reduces all elements in
the stream to a value of type `S`.

**Signature**

```ts
declare const runFold: { <S, A>(s: S, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E, R>; <A, E, R, S>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => S): Effect.Effect<S, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4119)

Since v2.0.0