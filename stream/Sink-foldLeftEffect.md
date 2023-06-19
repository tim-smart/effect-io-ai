# foldLeftEffect

A sink that effectfully folds its inputs with the provided function and
initial state.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const foldLeftEffect: <S, R, E, In>(
  s: S,
  f: (s: S, input: In) => Effect.Effect<R, E, S>
) => Sink<R, E, In, In, S>
```
