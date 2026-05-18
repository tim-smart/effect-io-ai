Package: `@effect/platform-browser`<br />
Module: `IndexedDbTable`<br />

## IndexedDbTable.WithName

Selects the table with the given name from a union of `IndexedDbTable` types.

**Signature**

```ts
type WithName<Table, TableName> = Extract<
  Table,
  { readonly tableName: TableName }
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbTable.ts#L164)

Since v4.0.0