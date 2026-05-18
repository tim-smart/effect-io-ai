Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.McpError

Schema for MCP protocol errors returned in JSON-RPC failure responses,
including standard protocol errors and custom `McpErrorBase` values.

**Signature**

```ts
declare const McpError: Schema.Union<readonly [typeof ParseError, typeof InvalidRequest, typeof MethodNotFound, typeof InvalidParams, typeof InternalError, typeof McpErrorBase]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L554)

Since v4.0.0