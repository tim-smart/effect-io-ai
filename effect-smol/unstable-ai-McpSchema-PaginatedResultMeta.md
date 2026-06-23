Package: `effect`<br />
Module: `McpSchema`<br />

## McpSchema.PaginatedResultMeta

Schema for MCP result metadata returned by paginated operations.

**Details**

It includes the base result metadata fields plus an optional `nextCursor`,
which indicates that more results may be available.

**Signature**

```ts
declare class PaginatedResultMeta
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/McpSchema.ts#L247)

Since v4.0.0