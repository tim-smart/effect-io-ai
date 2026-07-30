Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldWeighted

Creates a sink that folds elements of type `In` into a structure of type `S`,
until `max` worth of elements (determined by the `costFn`) have been folded.

**Note**

Elements that have an individual cost larger than `max` will force the sink
to cross the `max` cost. See `Sink.foldWeightedDecompose` for a variant
that can handle these cases.

**Signature**

```ts
declare const foldWeighted: <S, In>(options: { readonly initial: S; readonly maxCost: number; readonly cost: (s: S, input: In) => number; readonly body: (s: S, input: In) => S; }) => Sink<S, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L799)

Since v2.0.0