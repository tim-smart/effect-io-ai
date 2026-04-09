Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.BaseMessage

Base interface for all message types.

Provides common structure including role and provider options.

**Signature**

```ts
export interface BaseMessage<Role extends string, Options extends ProviderOptions> {
  readonly [MessageTypeId]: typeof MessageTypeId
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L985)

Since v4.0.0