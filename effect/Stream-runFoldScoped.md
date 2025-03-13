Package: `effect`<br />
Module: `Stream`<br />

## Stream.runFoldScoped

Executes a pure fold over the stream of values. Returns a scoped value that
represents the scope of the stream.

**Signature**

```ts
declare const runFoldScoped: { <S, A>(s: S, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E, Scope.Scope | R>; <A, E, R, S>(self: Stream<A, E, R>, s: S, f: (s: S, a: A) => S): Effect.Effect<S, E, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4149)

Since v2.0.0