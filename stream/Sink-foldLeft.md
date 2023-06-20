# foldLeft

A sink that folds its inputs with the provided function and initial state.

To import and use `foldLeft` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.foldLeft
```

**Signature**

```ts
export declare const foldLeft: <S, In>(s: S, f: (s: S, input: In) => S) => Sink<never, never, In, never, S>
```
