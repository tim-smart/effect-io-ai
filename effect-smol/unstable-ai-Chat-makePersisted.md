Package: `effect`<br />
Module: `Chat`<br />

## Chat.makePersisted

Creates a new chat persistence service.

**When to use**

Use to construct the `Chat.Persistence` service from the current
`BackingPersistence` when you want to create and retrieve persisted chats
programmatically by chat id.

**Details**

The provided store identifier will be used to indicate which "store" the
backing persistence should load chats from.

**See**

- `layerPersisted` for the `Layer`-based constructor

**Signature**

```ts
declare const makePersisted: (options: { readonly storeId: string; }) => Effect.Effect<Persistence.Service, never, Scope | BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L814)

Since v4.0.0