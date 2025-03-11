## foldUntil

Creates a sink that folds elements of type `In` into a structure of type
`S` until `max` elements have been folded.

Like `Sink.foldWeighted`, but with a constant cost function of `1`.

**Signature**

```ts
declare const foldUntil: <In, S>(s: S, max: number, f: (s: S, input: In) => S) => Sink<S, In, In>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L769)

Since v2.0.0