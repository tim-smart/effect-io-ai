# foldWeightedEffect

Creates a sink that effectfully folds elements of type `In` into a
structure of type `S`, until `max` worth of elements (determined by the
`costFn`) have been folded.

To import and use `foldWeightedEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldWeightedEffect
undefined

**Signature**

```ts
export declare const foldWeightedEffect: <S, In, E, R, E2, R2>(options: {
  readonly initial: S
  readonly maxCost: number
  readonly cost: (s: S, input: In) => Effect.Effect<number, E, R>
  readonly body: (s: S, input: In) => Effect.Effect<S, E2, R2>
}) => Sink<S, In, In, E | E2, R | R2>
```
