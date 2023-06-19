# scoped

Creates a single-valued stream from a scoped resource.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const scoped: <R, E, A>(
  effect: Effect.Effect<Scope.Scope | R, E, A>
) => Stream<Exclude<R, Scope.Scope>, E, A>
```
