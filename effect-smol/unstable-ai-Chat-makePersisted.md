Package: `effect`<br />
Module: `Chat`<br />

## Chat.makePersisted

Creates a new chat persistence service.

**When to use**

Use when you need programmatic persisted chat creation and retrieval backed
by the current `BackingPersistence`.

**Details**

The provided store identifier will be used to indicate which "store" the
backing persistence should load chats from.

**See**

- `layerPersisted` for the `Layer`-based constructor

**Signature**

```ts
declare const makePersisted: (options: { readonly storeId: string; }) => Effect.Effect<Persistence.Service, never, Scope | BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L767)

Since v4.0.0