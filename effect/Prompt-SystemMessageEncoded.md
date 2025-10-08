Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.SystemMessageEncoded

Encoded representation of system messages for serialization.

**Signature**

```ts
export interface SystemMessageEncoded extends BaseMessageEncoded<"system", SystemMessageOptions> {
  /**
   * The system instruction or context as plain text.
   */
  readonly content: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L863)

Since v1.0.0