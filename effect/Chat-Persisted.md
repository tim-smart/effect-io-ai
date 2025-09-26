Package: `@effect/ai`<br />
Module: `Chat`<br />

## Chat.Persisted

Represents a `Chat` that is backed by persistence.

When calling a text generation method (e.g. `generateText`), the previous
chat history as well as the relevent response parts will be saved to the
backing persistence store.

**Signature**

```ts
export interface Persisted extends Service {
  /**
   * The identifier for the chat in the backing persistence store.
   */
  readonly id: string

  /**
   * Saves the current chat history into the backing persistence store.
   */
  readonly save: Effect.Effect<void, AiError.MalformedOutput | PersistenceBackingError>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Chat.ts#L656)

Since v1.0.0