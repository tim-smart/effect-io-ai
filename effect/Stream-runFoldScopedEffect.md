Package: `effect`<br />
Module: `Stream`<br />

## Stream.runFoldScopedEffect

Executes an effectful fold over the stream of values. Returns a scoped
value that represents the scope of the stream.

**Signature**

```ts
declare const runFoldScopedEffect: { <S, A, E2, R2>(s: S, f: (s: S, a: A) => Effect.Effect<S, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E2 | E, Scope.Scope | R2 | R>; <A, E, R, S, E2, R2>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => Effect.Effect<S, E2, R2>): Effect.Effect<S, E | E2, Scope.Scope | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4161)

Since v2.0.0