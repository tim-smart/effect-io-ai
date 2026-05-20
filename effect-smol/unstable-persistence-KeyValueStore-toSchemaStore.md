Package: `effect`<br />
Module: `KeyValueStore`<br />

## KeyValueStore.toSchemaStore

Adapts a `KeyValueStore` into a `SchemaStore` using the schema's JSON codec.

**Signature**

```ts
declare const toSchemaStore: <S extends Schema.Top>(self: KeyValueStore, schema: S) => SchemaStore<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/KeyValueStore.ts#L752)

Since v4.0.0