# foldWeightedDecompose

Creates a sink that folds elements of type `In` into a structure of type
`S`, until `max` worth of elements (determined by the `costFn`) have been
folded.

The `decompose` function will be used for decomposing elements that cause
an `S` aggregate to cross `max` into smaller elements. For example:

```ts
pipe(
  Stream.make(1, 5, 1),
  Stream.transduce(
    Sink.foldWeightedDecompose(
      Chunk.empty<number>(),
      4,
      (n: number) => n,
      (n: number) => Chunk.make(n - 1, 1),
      (acc, el) => pipe(acc, Chunk.append(el))
    )
  ),
  Stream.runCollect
)
```

The stream would emit the elements `Chunk(1), Chunk(4), Chunk(1, 1)`.

Be vigilant with this function, it has to generate "simpler" values or the
fold may never end. A value is considered indivisible if `decompose` yields
the empty chunk or a single-valued chunk. In these cases, there is no other
choice than to yield a value that will cross the threshold.

`Sink.foldWeightedDecomposeEffect` allows the decompose function to return an
effect value, and consequently it allows the sink to fail.

To import and use `foldWeightedDecompose` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldWeightedDecompose
```

**Signature**

```ts
export declare const foldWeightedDecompose: <S, In>(options: {
  readonly initial: S
  readonly maxCost: number
  readonly cost: (s: S, input: In) => number
  readonly decompose: (input: In) => Chunk.Chunk<In>
  readonly body: (s: S, input: In) => S
}) => Sink<never, never, In, In, S>
```
