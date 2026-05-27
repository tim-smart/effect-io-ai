Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.KeyPath

Valid key-path type for a table schema, using encoded fields whose values are IndexedDB-valid keys.

**Signature**

```ts
type KeyPath<TableSchema> = | IndexedDbValidKeys<TableSchema>
  | NonEmptyReadonlyArray<IndexedDbValidKeys<TableSchema>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L164)

Since v4.0.0