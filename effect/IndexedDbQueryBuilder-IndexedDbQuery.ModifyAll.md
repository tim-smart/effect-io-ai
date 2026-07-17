Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.ModifyAll

Effect model for inserting or upserting multiple rows, returning the resulting IndexedDB keys and supporting reactivity invalidation.

**Signature**

```ts
export interface ModifyAll<
    Table extends IndexedDbTable.AnyWithProps
  > extends
    Effect.Effect<
      Array<globalThis.IDBValidKey>,
      IndexedDbQueryError,
      IndexedDbTable.Context<Table>
    >
  {
    readonly operation: "add" | "put"
    readonly from: From<Table>
    readonly values: Array<ModifyWithKey<Table>>

    /**
     * Invalidate any queries using Reactivity service with the provided keys.
     *
     * **Details**
     *
     * If no keys are provided, the table name is used as the reactivity key.
     */
    readonly invalidate: (
      keys?: ReadonlyArray<unknown> | Record.ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
    ) => Effect.Effect<globalThis.IDBValidKey, IndexedDbQueryError, IndexedDbTable.Context<Table>>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L693)

Since v4.0.0