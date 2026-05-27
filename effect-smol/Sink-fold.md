Package: `effect`<br />
Module: `Sink`<br />

## Sink.fold

A sink that folds its inputs with the provided function, termination
predicate and initial state.

**When to use**

Use to accumulate stream input element by element with an effectful step and
stop based on the accumulated state.

**Details**

The initial state is evaluated lazily. Each input element is folded with the
effectful function, and the sink continues while `contFn` returns `true`. If
the sink stops in the middle of a pulled array, the remaining elements from
that array are returned as leftovers.

**See**

- `foldArray` for folding each pulled non-empty input array at once
- `foldUntil` for folding until a fixed maximum number of elements is consumed

**Signature**

```ts
declare const fold: <S, In, E = never, R = never>(s: LazyArg<S>, contFn: Predicate<S>, f: (s: S, input: In) => Effect.Effect<S, E, R>) => Sink<S, In, In, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L746)

Since v2.0.0