# foldWeightedDecomposeEffect

Creates a sink that effectfully folds elements of type `In` into a
structure of type `S`, until `max` worth of elements (determined by the
`costFn`) have been folded.

The `decompose` function will be used for decomposing elements that cause
an `S` aggregate to cross `max` into smaller elements. Be vigilant with
this function, it has to generate "simpler" values or the fold may never
end. A value is considered indivisible if `decompose` yields the empty
chunk or a single-valued chunk. In these cases, there is no other choice
than to yield a value that will cross the threshold.

See `Sink.foldWeightedDecompose` for an example.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const foldWeightedDecomposeEffect: <S, In, R, E, R2, E2, R3, E3>(
  s: S,
  max: number,
  costFn: (s: S, input: In) => Effect.Effect<R, E, number>,
  decompose: (input: In) => Effect.Effect<R2, E2, Chunk.Chunk<In>>,
  f: (s: S, input: In) => Effect.Effect<R3, E3, S>
) => Sink<R | R2 | R3, E | E2 | E3, In, In, S>
```
