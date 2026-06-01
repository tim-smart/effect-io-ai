Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ContentBlock

Schema for MCP content blocks that can appear in prompt messages or tool
results.

**Signature**

```ts
declare const ContentBlock: Schema.Union<readonly [typeof TextContent, typeof ImageContent, typeof AudioContent, typeof EmbeddedResource, typeof ResourceLink]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1297)

Since v4.0.0