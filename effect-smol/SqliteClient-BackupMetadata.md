Package: `@effect/sql-sqlite-node`<br />
Module: `SqliteClient`<br />

## SqliteClient.BackupMetadata

Metadata returned from a Node SQLite backup operation, reporting total and remaining page counts.

**Signature**

```ts
export interface BackupMetadata {
  readonly totalPages: number
  readonly remainingPages: number
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/sql/sqlite-node/src/SqliteClient.ts#L107)

Since v4.0.0