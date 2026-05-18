Package: `@effect/platform-browser`<br />
Module: `IndexedDbTable`<br />

## IndexedDbTable.Context

Extracts the decoding or encoding service requirements needed by an `IndexedDbTable` schema.

**Signature**

```ts
type Context<Table> = | Table["tableSchema"]["DecodingServices"]
  | Table["tableSchema"]["EncodingServices"]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDbTable.ts#L138)

Since v4.0.0