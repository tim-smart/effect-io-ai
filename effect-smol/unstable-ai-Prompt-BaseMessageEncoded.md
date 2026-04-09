Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.BaseMessageEncoded

Base interface for encoded message types.

**Signature**

```ts
export interface BaseMessageEncoded<Role extends string, Options extends ProviderOptions> {
  /**
   * The role of the message participant.
   */
  readonly role: Role
  /**
   * Provider-specific options for this message.
   */
  readonly options?: Options | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1005)

Since v4.0.0