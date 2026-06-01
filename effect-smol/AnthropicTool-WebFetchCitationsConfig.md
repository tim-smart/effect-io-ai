Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebFetchCitationsConfig

Configuration payload for enabling or disabling citations on web fetch results.

**When to use**

Use when typing parsed web-fetch citation configuration shared between
request arguments and handler code.

**Details**

The payload contains the `enabled` flag. `citations` is optional on
`WebFetch_20250910_Args`, and citations are disabled by default.

**See**

- `WebFetch_20250910_Args` for the argument schema that consumes this configuration

**Signature**

```ts
type WebFetchCitationsConfig = typeof WebFetchCitationsConfig.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L2274)

Since v4.0.0