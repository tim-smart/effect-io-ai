Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldUntil

Folds input elements into state until the specified maximum number of
elements has been consumed or the upstream stream ends.

**Details**

If the sink stops in the middle of a pulled array, the remaining elements
from that array are returned as leftovers.

**Signature**

```ts
declare const foldUntil: <S, In, E = never, R = never>(s: LazyArg<S>, max: number, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L798)

Since v2.0.0