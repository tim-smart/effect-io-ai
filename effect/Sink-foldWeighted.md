# foldWeighted

Creates a sink that folds elements of type `In` into a structure of type
`S`, until `max` worth of elements (determined by the `costFn`) have been
folded.

To import and use `foldWeighted` from the "Sink" module:

```ts
import * as Sink from "effect/Sink"
// Can be accessed like this
Sink.foldWeighted
```

**Signature**

```ts
export declare const foldWeighted: <S, In>(options: {
  readonly initial: S
  readonly maxCost: number
  readonly cost: (s: S, input: In) => number
  readonly body: (s: S, input: In) => S
}) => Sink<never, never, In, In, S>
```
