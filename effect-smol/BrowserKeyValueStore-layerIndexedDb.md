Package: `@effect/platform-browser`<br />
Module: `BrowserKeyValueStore`<br />

## BrowserKeyValueStore.layerIndexedDb

Creates a `KeyValueStore` layer backed by IndexedDB.

**Signature**

```ts
declare const layerIndexedDb: (options?: { readonly database?: string | undefined; }) => Layer.Layer<KeyValueStore.KeyValueStore, never, IndexedDb>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserKeyValueStore.ts#L55)

Since v4.0.0