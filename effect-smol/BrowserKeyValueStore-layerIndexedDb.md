Package: `@effect/platform-browser`<br />
Module: `BrowserKeyValueStore`<br />

## BrowserKeyValueStore.layerIndexedDb

Creates a `KeyValueStore` layer backed by IndexedDB.

**When to use**

Use when you need persistent asynchronous IndexedDB storage for a browser
`KeyValueStore` instead of the synchronous Web Storage APIs.

**Details**

The database name defaults to `"effect_key_value_store"`. The layer requires
the `IndexedDb` service and stores string and `Uint8Array` values in the same
backing object store.

**Gotchas**

IndexedDB may be unavailable or blocked by browser settings, private browsing,
quota limits, or restricted contexts. The string and `Uint8Array` accessors do
not coerce values stored with the other representation.

**See**

- `layerLocalStorage` for synchronous persistent Web Storage
- `layerSessionStorage` for synchronous tab-session Web Storage

**Signature**

```ts
declare const layerIndexedDb: (options?: { readonly database?: string | undefined; }) => Layer.Layer<KeyValueStore.KeyValueStore, never, IndexedDb>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserKeyValueStore.ts#L65)

Since v4.0.0