Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.First

Effect model for selecting the first matching row, failing with `NoSuchElementError` when no row is found.

**Signature**

```ts
export interface First<
    Table extends IndexedDbTable.AnyWithProps,
    Index extends IndexedDbDatabase.IndexFromTable<Table>
  > extends
    Effect.Effect<
      SelectType<Table>,
      IndexedDbQueryError | Cause.NoSuchElementError,
      IndexedDbTable.Context<Table>
    >
  {
    readonly select: Select<Table, Index>

    /**
     * Use the Reactivity service to react to changes to the selected data.
     *
     * **Details**
     *
     * By default, the table name is used as the reactivity key.
     */
    readonly reactive: (
      keys?: ReadonlyArray<unknown> | Record.ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
    ) => Stream.Stream<
      SelectType<Table>,
      IndexedDbQueryError | Cause.NoSuchElementError,
      IndexedDbTable.Context<Table>
    >

    /**
     * Use the Reactivity service to react to changes to the selected data.
     *
     * **Details**
     *
     * By default, the table name is used as the reactivity key.
     */
    readonly reactiveQueue: (
      keys: ReadonlyArray<unknown> | Record.ReadonlyRecord<string, ReadonlyArray<unknown>>
    ) => Effect.Effect<
      Queue.Dequeue<SelectType<Table>, IndexedDbQueryError | Cause.NoSuchElementError>,
      never,
      Scope.Scope | IndexedDbTable.Context<Table>
    >
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L590)

Since v4.0.0