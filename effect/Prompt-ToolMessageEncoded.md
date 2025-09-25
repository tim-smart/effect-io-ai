Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.ToolMessageEncoded

Encoded representation of tool messages for serialization.

**Signature**

```ts
export interface ToolMessageEncoded extends BaseMessageEncoded<"tool", ToolMessageOptions> {
  /**
   * Array of tool result parts.
   */
  readonly content: ReadonlyArray<ToolMessagePartEncoded>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1071)

Since v1.0.0