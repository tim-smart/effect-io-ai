Package: `@effect/platform-browser`<br />
Module: `BrowserPersistence`<br />

## BrowserPersistence.layerIndexedDb

Creates a `Persistence` layer backed by IndexedDB, optionally using the provided database name.

**Signature**

```ts
declare const layerIndexedDb: (options?: { readonly database?: string | undefined; }) => Layer.Layer<Persistence.Persistence>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-browser/src/BrowserPersistence.ts#L121)

Since v4.0.0