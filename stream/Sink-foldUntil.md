# foldUntil

Creates a sink that folds elements of type `In` into a structure of type
`S` until `max` elements have been folded.

Like `Sink.foldWeighted`, but with a constant cost function of `1`.

Part of the `Sink` module, imported from `@effect/stream/Sink`.

**Signature**

```ts
export declare const foldUntil: <In, S>(s: S, max: number, f: (z: S, input: In) => S) => Sink<never, never, In, In, S>
```
