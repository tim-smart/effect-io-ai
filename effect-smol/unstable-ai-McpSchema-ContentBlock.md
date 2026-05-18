Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ContentBlock

Union of MCP content blocks that can appear in prompt messages or tool
results, including text, media, embedded resources, and resource links.

**Signature**

```ts
declare const ContentBlock: Schema.Union<readonly [typeof TextContent, typeof ImageContent, typeof AudioContent, typeof EmbeddedResource, typeof ResourceLink]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1174)

Since v4.0.0