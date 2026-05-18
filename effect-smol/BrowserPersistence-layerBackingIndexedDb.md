Package: `@effect/platform-browser`<br />
Module: `BrowserPersistence`<br />

## BrowserPersistence.layerBackingIndexedDb

Creates a `BackingPersistence` layer backed by IndexedDB, optionally using the provided database name.

**Signature**

```ts
declare const layerBackingIndexedDb: (options?: { readonly database?: string | undefined; }) => Layer.Layer<Persistence.BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserPersistence.ts#L29)

Since v4.0.0