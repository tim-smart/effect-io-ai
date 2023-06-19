# flattenEffectPar

Flattens `Effect` values into the stream's structure, preserving all
information about the effect.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenEffectPar: {
  (n: number): <R, E, E2, R2, A>(self: Stream<R, E, Effect.Effect<R2, E2, A>>) => Stream<R | R2, E | E2, A>
  <R, E, A, R2, E2>(self: Stream<R, E, Effect.Effect<R2, E2, A>>, n: number): Stream<R | R2, E | E2, A>
}
```
