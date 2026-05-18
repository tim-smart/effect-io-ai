Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.IndexFromTableName

Extracts the valid index names for a table name within an IndexedDB version.

**Signature**

```ts
type IndexFromTableName<Version, Table> = IndexFromTable<
  IndexedDbTable.WithName<IndexedDbVersion.Tables<Version>, Table>
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L248)

Since v4.0.0