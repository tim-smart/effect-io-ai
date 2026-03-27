Package: `effect`<br />
Module: `Chat`<br />

## Chat.Persistence.Service

Represents the backing persistence for a persisted `Chat`. Allows for
creating and retrieving chats that have been saved to a persistence store.

**Signature**

```ts
export interface Service {
    /**
     * Attempts to retrieve the persisted chat from the backing persistence
     * store with the specified chat identifer. If the chat does not exist in
     * the persistence store, a `ChatNotFoundError` will be returned.
     */
    readonly get: (chatId: string, options?: {
      readonly timeToLive?: Duration.Input | undefined
    }) => Effect.Effect<Persisted, ChatNotFoundError | PersistenceError>

    /**
     * Attempts to retrieve the persisted chat from the backing persistence
     * store with the specified chat identifer. If the chat does not exist in
     * the persistence store, an empty chat will be created, saved, and
     * returned.
     */
    readonly getOrCreate: (chatId: string, options?: {
      readonly timeToLive?: Duration.Input | undefined
    }) => Effect.Effect<Persisted, AiError.AiError | PersistenceError>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L668)

Since v4.0.0