# foldLeftEffect

A sink that effectfully folds its inputs with the provided function and
initial state.

To import and use `foldLeftEffect` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldLeftEffect
undefined

**Signature**

```ts
export declare const foldLeftEffect: <S, In, E, R>(
  s: S,
  f: (s: S, input: In) => Effect.Effect<S, E, R>
) => Sink<S, In, In, E, R>
```
