# foldLeftEffect

A sink that effectfully folds its inputs with the provided function and
initial state.

To import and use `foldLeftEffect` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.foldLeftEffect
```

**Signature**

```ts
export declare const foldLeftEffect: <S, R, E, In>(
  s: S,
  f: (s: S, input: In) => Effect.Effect<R, E, S>
) => Sink<R, E, In, In, S>
```
