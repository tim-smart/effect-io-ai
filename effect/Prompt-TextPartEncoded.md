Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.TextPartEncoded

Encoded representation of text parts for serialization.

**Signature**

```ts
export interface TextPartEncoded extends BasePartEncoded<"text", TextPartOptions> {
  /**
   * The text content.
   */
  readonly text: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L283)

Since v1.0.0