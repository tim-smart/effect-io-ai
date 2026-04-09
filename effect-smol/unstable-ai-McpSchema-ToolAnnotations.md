Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ToolAnnotations

Additional properties describing a Tool to clients.

NOTE: all properties in ToolAnnotations are **hints**. They are not
guaranteed to provide a faithful description of tool behavior (including
descriptive properties like `title`).

Clients should never make tool use decisions based on ToolAnnotations
received from untrusted servers.

**Signature**

```ts
declare class ToolAnnotations
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L1160)

Since v4.0.0