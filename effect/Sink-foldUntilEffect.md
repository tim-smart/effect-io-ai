Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldUntilEffect

Creates a sink that effectfully folds elements of type `In` into a
structure of type `S` until `max` elements have been folded.

Like `Sink.foldWeightedEffect` but with a constant cost function of `1`.

**Signature**

```ts
declare const foldUntilEffect: <S, In, E, R>(s: S, max: number, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L780)

Since v2.0.0