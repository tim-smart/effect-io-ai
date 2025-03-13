Package: `effect`<br />
Module: `Stream`<br />

## Stream.runForEachScoped

Like `Stream.forEach`, but returns a scoped effect so the finalization
order can be controlled.

**Signature**

```ts
declare const runForEachScoped: { <A, X, E2, R2>(f: (a: A) => Effect.Effect<X, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, Scope.Scope | R2 | R>; <A, E, R, X, E2, R2>(self: Stream<A, E, R>, f: (a: A) => Effect.Effect<X, E2, R2>): Effect.Effect<void, E | E2, Scope.Scope | R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L4308)

Since v2.0.0