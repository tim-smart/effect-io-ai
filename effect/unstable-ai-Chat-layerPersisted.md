Package: `effect`<br />
Module: `Chat`<br />

## Chat.layerPersisted

Creates a `Layer` for a new chat persistence service.

**When to use**

Use to provide `Chat.Persistence` from a configured `BackingPersistence` when
your application needs persisted chat sessions backed by a named store.

**Details**

The provided store identifier will be used to indicate which "store" the
backing persistence should load chats from.

**See**

- `makePersisted` for the effect constructor when building the service directly instead of providing it as a layer

**Signature**

```ts
declare const layerPersisted: (options: { readonly storeId: string; }) => Layer.Layer<Persistence, never, BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Chat.ts#L929)

Since v4.0.0