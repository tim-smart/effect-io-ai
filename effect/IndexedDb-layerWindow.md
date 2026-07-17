Package: `@effect/platform-browser`<br />
Module: `IndexedDb`<br />

## IndexedDb.layerWindow

Layer that provides `IndexedDb` from `window.indexedDB` and `window.IDBKeyRange`, failing with a config error when they are unavailable.

**Signature**

```ts
declare const layerWindow: Layer.Layer<IndexedDb, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/IndexedDb.ts#L99)

Since v4.0.0