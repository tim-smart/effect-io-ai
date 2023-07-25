# foldWeightedEffect

Creates a sink that effectfully folds elements of type `In` into a
structure of type `S`, until `max` worth of elements (determined by the
`costFn`) have been folded.

To import and use `foldWeightedEffect` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.foldWeightedEffect
```

**Signature**

```ts
export declare const foldWeightedEffect: <S, In, R, E, R2, E2>(options: {
  readonly initial: S
  readonly maxCost: number
  readonly cost: (s: S, input: In) => Effect.Effect<R, E, number>
  readonly body: (s: S, input: In) => Effect.Effect<R2, E2, S>
}) => Sink<R | R2, E | E2, In, In, S>
```
