Package: `effect`<br />
Module: `Record`<br />

## Record.makeReducerIntersection

Creates a `Reducer` whose `combine` operation intersects two records and
combines values for keys present in both records.

The reducer's `initialValue` is an empty record. Because intersection with
an empty record is empty, the default `combineAll` folds from `{}` and
therefore produces `{}` for ordinary non-empty inputs.

**Signature**

```ts
declare const makeReducerIntersection: <K extends string, A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<Record<K, A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Record.ts#L1454)

Since v4.0.0