Package: `effect`<br />
Module: `Stream`<br />

## Stream.runFoldWhileScoped

Executes a pure fold over the stream of values. Returns a scoped value that
represents the scope of the stream. Stops the fold early when the condition
is not fulfilled.

**Signature**

```ts
declare const runFoldWhileScoped: { <S, A>(s: S, cont: Predicate<S>, f: (s: S, a: A) => S): <E, R>(self: Stream<A, E, R>) => Effect.Effect<S, E, Scope.Scope | R>; <A, E, R, S>(self: Stream<A, E, R>, s: S, cont: Predicate<S>, f: (s: S, a: A) => S): Effect.Effect<S, E, Scope.Scope | R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4237)

Since v2.0.0