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

To import and use `foldWeightedDecomposeEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldWeightedDecomposeEffect
```

**Signature**

```ts
export declare const foldWeightedDecomposeEffect: <S, In, R, E, R2, E2, R3, E3>(options: {
  readonly initial: S
  readonly maxCost: number
  readonly cost: (s: S, input: In) => Effect.Effect<R, E, number>
  readonly decompose: (input: In) => Effect.Effect<R2, E2, Chunk.Chunk<In>>
  readonly body: (s: S, input: In) => Effect.Effect<R3, E3, S>
}) => Sink<R | R2 | R3, E | E2 | E3, In, In, S>
```
