Package: `effect`<br />
Module: `Stream`<br />

## Stream.unwrapScopedWith

Creates a stream produced from a function which receives a `Scope` and
returns an `Effect`. The resulting stream will emit a single element, which
will be the result of the returned effect, if successful.

**Signature**

```ts
declare const unwrapScopedWith: <A, E2, R2, E, R>(f: (scope: Scope.Scope) => Effect.Effect<Stream<A, E2, R2>, E, R>) => Stream<A, E | E2, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5511)

Since v3.11.0