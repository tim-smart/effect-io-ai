Package: `@effect/platform-browser`<br />
Module: `IndexedDbTable`<br />

## IndexedDbTable.Any

Type-erased shape of an `IndexedDbTable` used when table type parameters are not needed.

**Signature**

```ts
export interface Any {
  readonly [TypeId]: typeof TypeId
  readonly keyPath: any
  readonly tableName: string
  readonly tableSchema: Schema.Top
  readonly readSchema: Schema.Top
  readonly autoincrementSchema: Schema.Top
  readonly arraySchema: Schema.Top
  readonly autoIncrement: boolean
  readonly indexes: any
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbTable.ts#L76)

Since v4.0.0