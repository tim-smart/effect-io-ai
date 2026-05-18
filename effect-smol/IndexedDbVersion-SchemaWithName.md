Package: `@effect/platform-browser`<br />
Module: `IndexedDbVersion`<br />

## IndexedDbVersion.SchemaWithName

Extracts the schema for a named table within an `IndexedDbVersion`.

**Signature**

```ts
type SchemaWithName<Db, TableName> = IndexedDbTable.TableSchema<IndexedDbTable.WithName<Tables<Db>, TableName>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbVersion.ts#L84)

Since v4.0.0