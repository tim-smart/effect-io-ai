Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.BaseMessage

Base interface for all message types.

Provides common structure including role and provider options.

**Signature**

```ts
export interface BaseMessage<Role extends string, Options extends ProviderOptions> {
  readonly [MessageTypeId]: MessageTypeId
  /**
   * The role of the message participant.
   */
  readonly role: Role
  /**
   * Provider-specific options for this message.
   */
  readonly options: Options
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L733)

Since v1.0.0