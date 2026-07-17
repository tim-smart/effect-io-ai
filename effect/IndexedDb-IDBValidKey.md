Package: `@effect/platform-browser`<br />
Module: `IndexedDb`<br />

## IndexedDb.IDBValidKey

Schema for IndexedDB keys: strings, non-NaN numbers, valid dates, buffer sources, or arrays of those flat key values.

**Signature**

```ts
declare const IDBValidKey: Schema.Union<readonly [Schema.Union<readonly [Schema.String, Schema.Number, Schema.DateValid, Schema.declare<BufferSource, unknown>]>, Schema.$Array<Schema.Union<readonly [Schema.String, Schema.Number, Schema.DateValid, Schema.declare<BufferSource, unknown>]>>]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDb.ts#L57)

Since v4.0.0