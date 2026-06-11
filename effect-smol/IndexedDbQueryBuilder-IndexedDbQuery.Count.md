Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.Count

Effect model for counting table rows, optionally constrained by an index and key-range comparisons.

**Signature**

```ts
export interface Count<
    Table extends IndexedDbTable.AnyWithProps,
    Index extends IndexedDbDatabase.IndexFromTable<Table>
  > extends Effect.Effect<number, IndexedDbQueryError> {
    readonly from: From<Table>
    readonly index?: Index
    readonly only?: ExtractIndexType<Table, Index>
    readonly lowerBound?: ExtractIndexType<Table, Index>
    readonly upperBound?: ExtractIndexType<Table, Index>
    readonly excludeLowerBound?: boolean
    readonly excludeUpperBound?: boolean

    readonly equals: (
      value: EqualsType<Table, Index>
    ) => Omit<Count<Table, Index>, ComparisonKeys>

    readonly gte: (
      value: ExtractIndexType<Table, Index>
    ) => Omit<Count<Table, Index>, ComparisonKeys>

    readonly lte: (
      value: ExtractIndexType<Table, Index>
    ) => Omit<Count<Table, Index>, ComparisonKeys>

    readonly gt: (
      value: ExtractIndexType<Table, Index>
    ) => Omit<Count<Table, Index>, ComparisonKeys>

    readonly lt: (
      value: ExtractIndexType<Table, Index>
    ) => Omit<Count<Table, Index>, ComparisonKeys>

    readonly between: (
      lowerBound: ExtractIndexType<Table, Index>,
      upperBound: ExtractIndexType<Table, Index>,
      options?: { excludeLowerBound?: boolean; excludeUpperBound?: boolean }
    ) => Omit<Count<Table, Index>, ComparisonKeys>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L339)

Since v4.0.0