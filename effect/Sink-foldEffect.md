# foldEffect

A sink that effectfully folds its inputs with the provided function,
termination predicate and initial state.

To import and use `foldEffect` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldEffect
```

**Signature**

```ts
export declare const foldEffect: <S, R, E, In>(
  s: S,
  contFn: Predicate<S>,
  f: (s: S, input: In) => Effect.Effect<R, E, S>
) => Sink<R, E, In, In, S>
```
