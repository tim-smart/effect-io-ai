Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.layerPersisted

Creates a `Layer` new chat persistence service.

The provided store identifier will be used to indicate which "store" the
backing persistence should load chats from.

**Signature**

```ts
declare const layerPersisted: (options: { readonly storeId: string; }) => Layer.Layer<Persistence, never, BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L848)

Since v1.0.0