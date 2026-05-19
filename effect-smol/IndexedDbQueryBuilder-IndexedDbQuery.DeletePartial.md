Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.DeletePartial

Intermediate delete builder used to choose a key range or limit before producing an executable delete query.

**Signature**

```ts
export interface DeletePartial<
    Table extends IndexedDbTable.AnyWithProps,
    Index extends IndexedDbDatabase.IndexFromTable<Table>
  > {
    readonly from: From<Table>
    readonly index?: Index

    readonly equals: (
      value: EqualsType<Table, Index>
    ) => Delete<Table, Index>

    readonly gte: (
      value: ExtractIndexType<Table, Index>
    ) => Delete<Table, Index>

    readonly lte: (
      value: ExtractIndexType<Table, Index>
    ) => Delete<Table, Index>

    readonly gt: (
      value: ExtractIndexType<Table, Index>
    ) => Delete<Table, Index>

    readonly lt: (
      value: ExtractIndexType<Table, Index>
    ) => Delete<Table, Index>

    readonly between: (
      lowerBound: ExtractIndexType<Table, Index>,
      upperBound: ExtractIndexType<Table, Index>,
      options?: { excludeLowerBound?: boolean; excludeUpperBound?: boolean }
    ) => Delete<Table, Index>

    readonly limit: (
      limit: number
    ) => DeleteWithout<Table, Index, "limit">
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L392)

Since v4.0.0