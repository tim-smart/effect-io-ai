Package: `effect`<br />
Module: `Record`<br />

## Record.makeReducerUnion

Creates a `Reducer` for combining `Record`s using union, with values for keys that exist in both records combined
using the provided `Combiner`.

**When to use**

Use to build a reusable reducer for accumulating many records into one
union-shaped record, preserving keys from every input and combining
overlapping values with the supplied combiner.

**Details**

The returned reducer uses `Record.union` for combine and an empty record as
`initialValue`, so the default `combineAll` folds from `{}` and accumulates
keys from each input record.

**See**

- `union` for one-off record merging with the same union semantics
- `makeReducerIntersection` for a reducer that keeps only keys present on both sides

**Signature**

```ts
declare const makeReducerUnion: <K extends string, A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<Record<K, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1530)

Since v4.0.0