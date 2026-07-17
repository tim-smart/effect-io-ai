Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebFetch_20250910_Args

Configuration arguments for the Anthropic web fetch tool, including usage limits, domain filters, citation settings, and token limits.

**When to use**

Use when typing parsed web-fetch tool configuration shared by the
provider-defined tool and request-building code.

**Gotchas**

`allowedDomains` and `blockedDomains` are mutually exclusive.
`maxContentTokens` is approximate and does not apply to binary content such
as PDFs.

**Signature**

```ts
type WebFetch_20250910_Args = typeof WebFetch_20250910_Args.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L2305)

Since v4.0.0