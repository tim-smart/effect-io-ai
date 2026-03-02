Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebFetch_20250910_Args

Configuration arguments for the web fetch tool.

**Signature**

```ts
declare const WebFetch_20250910_Args: Schema.Struct<{ readonly maxUses: Schema.optional<Schema.Number>; readonly allowedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly blockedDomains: Schema.optional<Schema.$Array<Schema.String>>; readonly citations: Schema.optional<Schema.Struct<{ readonly enabled: Schema.Boolean; }>>; readonly maxContentTokens: Schema.optional<Schema.Number>; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1407)

Since v1.0.0