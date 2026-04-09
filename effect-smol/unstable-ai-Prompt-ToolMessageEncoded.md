Package: `effect`<br />
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1578)

Since v4.0.0