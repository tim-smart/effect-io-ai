# fold

A sink that folds its inputs with the provided function, termination
predicate and initial state.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const fold: <S, In>(
  s: S,
  contFn: Predicate<S>,
  f: (z: S, input: In) => S
) => Sink<never, never, In, In, S>
```
