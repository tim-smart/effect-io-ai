Package: `effect`<br />
Module: `Stream`<br />

## Stream.unwrapScoped

Creates a stream produced from a scoped `Effect`.

**Signature**

```ts
declare const unwrapScoped: <A, E2, R2, E, R>(effect: Effect.Effect<Stream<A, E2, R2>, E, R>) => Stream<A, E | E2, R2 | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L5448)

Since v2.0.0