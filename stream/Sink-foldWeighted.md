# foldWeighted

Creates a sink that folds elements of type `In` into a structure of type
`S`, until `max` worth of elements (determined by the `costFn`) have been
folded.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const foldWeighted: <S, In>(
  s: S,
  max: number,
  costFn: (s: S, input: In) => number,
  f: (s: S, input: In) => S
) => Sink<never, never, In, In, S>
```
