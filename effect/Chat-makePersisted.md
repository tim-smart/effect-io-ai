Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.makePersisted

Creates a new chat persistence service.

The provided store identifier will be used to indicate which "store" the
backing persistence should load chats from.

**Signature**

```ts
declare const makePersisted: (options: { readonly storeId: string; }) => Effect.Effect<Persistence.Service, never, Scope | BackingPersistence>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L677)

Since v1.0.0