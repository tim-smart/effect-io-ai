Package: `@effect/platform-browser`<br />
Module: `IndexedDb`<br />

## IndexedDb.IDBValidKey

Schema for `IDBValidKey` (`number | string | Date | BufferSource | IDBValidKey[]`).

**Signature**

```ts
declare const IDBValidKey: Schema.Union<readonly [Schema.Union<readonly [Schema.String, Schema.Number, Schema.Date, Schema.declare<BufferSource, unknown>]>, Schema.$Array<Schema.Union<readonly [Schema.String, Schema.Number, Schema.Date, Schema.declare<BufferSource, unknown>]>>]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDb.ts#L47)

Since v4.0.0