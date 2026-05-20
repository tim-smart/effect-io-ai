Package: `effect`<br />
Module: `Chat`<br />

## Chat.layerPersisted

Creates a `Layer` for a new chat persistence service.

**Details**

The provided store identifier will be used to indicate which "store" the
backing persistence should load chats from.

**Signature**

```ts
declare const layerPersisted: (options: { readonly storeId: string; }) => Layer.Layer<Persistence, never, BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L927)

Since v4.0.0