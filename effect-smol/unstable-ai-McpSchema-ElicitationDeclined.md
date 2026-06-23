Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.ElicitationDeclined

Error raised when an MCP elicitation request is declined or fails before
accepted content is returned.

**Details**

The error stores the original elicitation request and, when available, the
underlying cause.

**Signature**

```ts
declare class ElicitationDeclined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L2143)

Since v4.0.0