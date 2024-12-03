# fold

A sink that folds its inputs with the provided function, termination
predicate and initial state.

To import and use `fold` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.fold
```

**Signature**

```ts
export declare const fold: <S, In>(s: S, contFn: Predicate<S>, f: (s: S, input: In) => S) => Sink<S, In, In>
```
