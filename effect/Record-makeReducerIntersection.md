Package: `effect`<br />
Module: `Record`<br />

## Record.makeReducerIntersection

Creates a `Reducer` whose `combine` operation intersects two records and
combines values for keys present in both records.

**When to use**

Use to build a `Reducer` that combines records by retaining only keys shared
by both inputs and combining matching values with a `Combiner`.

**Gotchas**

The reducer's `initialValue` is an empty record. Because intersection with
an empty record is empty, the default `combineAll` folds from `{}` and
therefore produces `{}` for ordinary non-empty inputs.

**See**

- `makeReducerUnion` for a reducer that preserves keys from either input record
- `intersection` for applying the shared-key merge to one pair of records

**Signature**

```ts
declare const makeReducerIntersection: <K extends string, A>(combiner: Combiner.Combiner<A>) => Reducer.Reducer<Record<K, A>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Record.ts#L1504)

Since v4.0.0