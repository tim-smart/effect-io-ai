# foldUntilEffect

Creates a sink that effectfully folds elements of type `In` into a
structure of type `S` until `max` elements have been folded.

Like `Sink.foldWeightedEffect` but with a constant cost function of `1`.

To import and use `foldUntilEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldUntilEffect
```

**Signature**

```ts
export declare const foldUntilEffect: <S, In, E, R>(
  s: S,
  max: number,
  f: (s: S, input: In) => Effect.Effect<S, E, R>
) => Sink<S, In, In, E, R>
```
