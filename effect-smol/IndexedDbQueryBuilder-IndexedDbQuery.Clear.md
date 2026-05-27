Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.IndexedDbQuery.Clear

Effect model for clearing all rows from a table.

**Signature**

```ts
export interface Clear<
    Table extends IndexedDbTable.AnyWithProps
  > extends Effect.Effect<void, IndexedDbQueryError> {
    readonly from: From<Table>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L341)

Since v4.0.0