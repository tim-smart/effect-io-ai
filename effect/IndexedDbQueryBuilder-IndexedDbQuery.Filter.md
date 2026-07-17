Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.Filter

Effect model for a select query filtered by one or more predicates over encoded table rows.

**Signature**

```ts
export interface Filter<
    Table extends IndexedDbTable.AnyWithProps,
    Index extends IndexedDbDatabase.IndexFromTable<Table>
  > extends
    Effect.Effect<
      Array<SelectType<Table>>,
      IndexedDbQueryError,
      IndexedDbTable.Context<Table>
    >
  {
    readonly select: Select<Table, Index>
    readonly predicate: (item: IndexedDbTable.Encoded<Table>) => boolean
    readonly filter: (
      f: (value: IndexedDbTable.Encoded<Table>) => boolean
    ) => Filter<Table, Index>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L639)

Since v4.0.0