Package: `effect`<br />
Module: `EventLogServerUnencrypted`<br />

## EventLogServerUnencrypted.layerStoreMappingStatic

Provides a `StoreMapping` that accepts only one configured store id and fails
all other store ids as not found.

**Signature**

```ts
declare const layerStoreMappingStatic: (options: { readonly storeId: StoreId; }) => Layer.Layer<StoreMapping>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/EventLogServerUnencrypted.ts#L356)

Since v4.0.0