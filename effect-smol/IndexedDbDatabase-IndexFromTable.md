Package: `@effect/platform-browser`<br />
Module: `IndexedDbDatabase`<br />

## IndexedDbDatabase.IndexFromTable

Extracts the string-literal index names defined by an `IndexedDbTable`.

**Signature**

```ts
type IndexFromTable<Table> = IsStringLiteral<
  Extract<keyof IndexedDbTable.Indexes<Table>, string>
> extends true ? Extract<keyof IndexedDbTable.Indexes<Table>, string>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbDatabase.ts#L237)

Since v4.0.0