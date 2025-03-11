## foldWeightedEffect

Creates a sink that effectfully folds elements of type `In` into a
structure of type `S`, until `max` worth of elements (determined by the
`costFn`) have been folded.

**Signature**

```ts
declare const foldWeightedEffect: <S, In, E, R, E2, R2>(options: { readonly initial: S; readonly maxCost: number; readonly cost: (s: S, input: In) => Effect.Effect<number, E, R>; readonly body: (s: S, input: In) => Effect.Effect<S, E2, R2>; }) => Sink<S, In, In, E | E2, R | R2>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L895)

Since v2.0.0