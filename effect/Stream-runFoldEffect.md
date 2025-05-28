Package: `effect`<br />
Module: `Stream`<br />

## Stream.runFoldEffect

Executes an effectful fold over the stream of values.

**Signature**

```ts
declare const runFoldEffect: { <S, A, E2, R2>(s: S, f: (s: S, a: A) => Effect.Effect<S, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E2 | E, Exclude<R | R2, Scope.Scope>>; <A, E, R, S, E2, R2>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => Effect.Effect<S, E2, R2>): Effect.Effect<S, E | E2, Exclude<R | R2, Scope.Scope>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4153)

Since v2.0.0