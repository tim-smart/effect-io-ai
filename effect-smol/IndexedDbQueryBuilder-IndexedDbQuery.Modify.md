Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.Modify

Effect model for inserting or upserting one row, returning the resulting IndexedDB key and supporting reactivity invalidation.

**Signature**

```ts
export interface Modify<
    Table extends IndexedDbTable.AnyWithProps
  > extends
    Effect.Effect<
      globalThis.IDBValidKey,
      IndexedDbQueryError,
      IndexedDbTable.Context<Table>
    >
  {
    readonly operation: "add" | "put"
    readonly from: From<Table>
    readonly value: ModifyWithKey<Table>

    /**
     * Invalidate any queries using Reactivity service with the provided keys.
     *
     * Defaults to using the table name as a key if no keys are provided.
     */
    readonly invalidate: (
      keys?: ReadonlyArray<unknown> | Record.ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
    ) => Effect.Effect<globalThis.IDBValidKey, IndexedDbQueryError, IndexedDbTable.Context<Table>>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L660)

Since v4.0.0