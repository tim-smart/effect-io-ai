Package: `@effect/platform-browser`<br />
Module: `IndexedDbQueryBuilder`<br />

## IndexedDbQueryBuilder.KeyPathNumber

Valid numeric key-path type for a table schema, used for auto-increment key paths.

**Signature**

```ts
type KeyPathNumber<TableSchema> = | IndexedDbValidNumberKeys<TableSchema>
  | NonEmptyReadonlyArray<IndexedDbValidNumberKeys<TableSchema>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbQueryBuilder.ts#L158)

Since v4.0.0