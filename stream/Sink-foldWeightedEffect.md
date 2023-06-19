# foldWeightedEffect

Creates a sink that effectfully folds elements of type `In` into a
structure of type `S`, until `max` worth of elements (determined by the
`costFn`) have been folded.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const foldWeightedEffect: <S, In, R, E, R2, E2>(
  s: S,
  max: number,
  costFn: (s: S, input: In) => Effect.Effect<R, E, number>,
  f: (s: S, input: In) => Effect.Effect<R2, E2, S>
) => Sink<R | R2, E | E2, In, In, S>
```
