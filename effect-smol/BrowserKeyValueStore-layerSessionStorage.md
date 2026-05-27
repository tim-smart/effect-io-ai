Package: `@effect/platform-browser`<br />
Module: `BrowserKeyValueStore`<br />

## BrowserKeyValueStore.layerSessionStorage

Creates a `KeyValueStore` layer that uses the browser's `sessionStorage` API and stores values only for the current session.

**Signature**

```ts
declare const layerSessionStorage: Layer.Layer<KeyValueStore.KeyValueStore, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserKeyValueStore.ts#L76)

Since v4.0.0