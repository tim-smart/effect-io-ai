Package: `effect`<br />
Module: `Sink`<br />

## Sink.foldArray

Folds non-empty input arrays into state with an effectful function.

**When to use**

Use to update state with an effectful function once per pulled non-empty
input array when batch-level processing is the natural unit.

**Details**

The initial state is evaluated lazily. After each pulled array is folded,
the sink continues while `contFn` returns `true`; otherwise it completes
with the current state.

**See**

- `fold` for folding element by element and returning leftovers when stopping mid-array
- `reduceWhileArrayEffect` for array-level effectful reducing that checks the predicate before consuming input

**Signature**

```ts
declare const foldArray: <S, In, E = never, R = never>(s: LazyArg<S>, contFn: Predicate<S>, f: (s: S, input: Arr.NonEmptyReadonlyArray<In>) => Effect.Effect<S, E, R>) => Sink<S, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L790)

Since v4.0.0