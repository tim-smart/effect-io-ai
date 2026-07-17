Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.From

Query entry point for a table, exposing clear, select, count, delete, insert, and upsert operations.

**Signature**

```ts
export interface From<Table extends IndexedDbTable.AnyWithProps> {
    readonly table: Table
    readonly database: MutableRef.MutableRef<globalThis.IDBDatabase>
    readonly IDBKeyRange: typeof globalThis.IDBKeyRange
    readonly reactivity: Reactivity.Reactivity["Service"]

    readonly clear: Effect.Effect<void, IndexedDbQueryError>

    readonly select: {
      <Index extends IndexedDbDatabase.IndexFromTable<Table>>(
        index: Index
      ): Select<Table, Index>
      (): Select<Table, never>
    }

    /** @internal */
    readonly selectCache: Map<
      string | undefined,
      IndexedDbQuery.Select<any, never>
    >

    readonly count: {
      <Index extends IndexedDbDatabase.IndexFromTable<Table>>(
        index: Index
      ): Count<Table, Index>
      (): Count<Table, never>
    }

    /** @internal */
    readonly countCache: Map<
      string | undefined,
      IndexedDbQuery.Count<any, never>
    >

    readonly delete: {
      <Index extends IndexedDbDatabase.IndexFromTable<Table>>(
        index: Index
      ): DeletePartial<Table, Index>
      (): DeletePartial<Table, never>
    }

    /** @internal */
    readonly deleteCache: Map<
      string | undefined,
      IndexedDbQuery.DeletePartial<any, never>
    >

    readonly insert: (value: ModifyWithKey<Table>) => Modify<Table>
    readonly insertAll: (
      values: Array<ModifyWithKey<Table>>
    ) => ModifyAll<Table>
    readonly upsert: (value: ModifyWithKey<Table>) => Modify<Table>
    readonly upsertAll: (
      values: Array<ModifyWithKey<Table>>
    ) => ModifyAll<Table>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L262)

Since v4.0.0