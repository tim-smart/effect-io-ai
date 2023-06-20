# foldWeighted

Creates a sink that folds elements of type `In` into a structure of type
`S`, until `max` worth of elements (determined by the `costFn`) have been
folded.

To import and use `foldWeighted` from the "Sink" module:

```ts
import * as Sink from '@effect/stream/Sink'

// Can be accessed like this
Sink.foldWeighted
```

**Signature**

```ts
export declare const foldWeighted: <S, In>(
  s: S,
  max: number,
  costFn: (s: S, input: In) => number,
  f: (s: S, input: In) => S
) => Sink<never, never, In, In, S>
```
