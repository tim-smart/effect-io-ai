Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.Select

Effect model for selecting rows from a table, with chainable range, paging, filtering, streaming, and reactive query helpers.

**Signature**

```ts
export interface Select<
    Table extends IndexedDbTable.AnyWithProps,
    Index extends IndexedDbDatabase.IndexFromTable<Table>,
    ExcludedKeys extends string = never
  > extends
    Effect.Effect<
      Array<SelectType<Table>>,
      IndexedDbQueryError,
      IndexedDbTable.Context<Table>
    >
  {
    readonly from: From<Table>
    readonly index?: Index
    readonly limitValue?: number
    readonly offsetValue?: number
    readonly reverseValue?: boolean
    readonly only?: ExtractIndexType<Table, Index>
    readonly lowerBound?: ExtractIndexType<Table, Index>
    readonly upperBound?: ExtractIndexType<Table, Index>
    readonly excludeLowerBound?: boolean
    readonly excludeUpperBound?: boolean
    readonly predicate?: (item: IndexedDbTable.Encoded<Table>) => boolean

    readonly equals: (
      value: EqualsType<Table, Index>
    ) => SelectWithout<Table, Index, ExcludedKeys | ComparisonKeys>

    readonly gte: (
      value: ExtractIndexType<Table, Index>
    ) => SelectWithout<Table, Index, ExcludedKeys | ComparisonKeys>

    readonly lte: (
      value: ExtractIndexType<Table, Index>
    ) => SelectWithout<Table, Index, ExcludedKeys | ComparisonKeys>

    readonly gt: (
      value: ExtractIndexType<Table, Index>
    ) => SelectWithout<Table, Index, ExcludedKeys | ComparisonKeys>

    readonly lt: (
      value: ExtractIndexType<Table, Index>
    ) => SelectWithout<Table, Index, ExcludedKeys | ComparisonKeys>

    readonly between: (
      lowerBound: ExtractIndexType<Table, Index>,
      upperBound: ExtractIndexType<Table, Index>,
      options?: { excludeLowerBound?: boolean; excludeUpperBound?: boolean }
    ) => SelectWithout<Table, Index, ExcludedKeys | ComparisonKeys>

    readonly limit: (
      limit: number
    ) => SelectWithout<Table, Index, ExcludedKeys | "limit" | "first">

    readonly offset: (
      offset: number
    ) => SelectWithout<Table, Index, ExcludedKeys | "offset" | "first">

    readonly reverse: () => SelectWithout<Table, Index, ExcludedKeys | "reverse" | "first">

    readonly filter: (
      f: (value: IndexedDbTable.Encoded<Table>) => boolean
    ) => SelectWithout<Table, Index, ExcludedKeys | "first">

    readonly first: () => First<Table, Index>

    /**
     * Stream the selected data.
     *
     * **Details**
     *
     * The default chunk size is 100.
     */
    readonly stream: (options?: {
      readonly chunkSize?: number | undefined
    }) => Stream.Stream<
      SelectType<Table>,
      IndexedDbQueryError,
      IndexedDbTable.Context<Table>
    >

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
      Array<SelectType<Table>>,
      IndexedDbQueryError,
      IndexedDbTable.Context<Table>
    >
    readonly reactiveQueue: (
      keys?: ReadonlyArray<unknown> | Record.ReadonlyRecord<string, ReadonlyArray<unknown>> | undefined
    ) => Effect.Effect<
      Queue.Dequeue<Array<SelectType<Table>>, IndexedDbQueryError>,
      never,
      Scope.Scope | IndexedDbTable.Context<Table>
    >
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L497)

Since v4.0.0