Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.Delete

Effect model for deleting rows from a table, with optional key-range, limit, filter, and reactivity invalidation helpers.

**Signature**

```ts
export interface Delete<
    Table extends IndexedDbTable.AnyWithProps,
    Index extends IndexedDbDatabase.IndexFromTable<Table>,
    ExcludedKeys extends string = never
  > extends Effect.Effect<void, IndexedDbQueryError> {
    readonly delete: DeletePartial<Table, Index>
    readonly index?: Index
    readonly limitValue?: number
    readonly only?: ExtractIndexType<Table, Index>
    readonly lowerBound?: ExtractIndexType<Table, Index>
    readonly upperBound?: ExtractIndexType<Table, Index>
    readonly excludeLowerBound?: boolean
    readonly excludeUpperBound?: boolean
    readonly predicate?: (item: IndexedDbTable.Encoded<Table>) => boolean

    readonly limit: (
      limit: number
    ) => DeleteWithout<Table, Index, ExcludedKeys | "limit">

    readonly filter: (
      f: (value: IndexedDbTable.Encoded<Table>) => boolean
    ) => DeleteWithout<Table, Index, ExcludedKeys>

    /**
     * Invalidate any queries using Reactivity service with the provided keys.
     *
     * Defaults to using the table name as a key if no keys are provided.
     */
    readonly invalidate: (
      keys?: ReadonlyArray<unknown> | Record.ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
    ) => Effect.Effect<void, IndexedDbQueryError, IndexedDbTable.Context<Table>>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L442)

Since v4.0.0