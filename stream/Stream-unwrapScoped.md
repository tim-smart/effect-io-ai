# unwrapScoped

Creates a stream produced from a scoped `Effect`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const unwrapScoped: <R, E, R2, E2, A>(
  effect: Effect.Effect<Scope.Scope | R, E, Stream<R2, E2, A>>
) => Stream<R2 | Exclude<R, Scope.Scope>, E | E2, A>
```
