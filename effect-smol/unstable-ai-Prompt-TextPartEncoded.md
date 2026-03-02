Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L284)

Since v4.0.0