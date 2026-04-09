Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.UserMessageEncoded

Encoded representation of user messages for serialization.

**Signature**

```ts
export interface UserMessageEncoded extends BaseMessageEncoded<"user", UserMessageOptions> {
  /**
   * Array of content parts that make up the user's message.
   */
  readonly content: string | ReadonlyArray<UserMessagePartEncoded>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1240)

Since v4.0.0