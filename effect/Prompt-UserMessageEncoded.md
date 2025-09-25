Package: `@effect/ai`<br />
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L870)

Since v1.0.0