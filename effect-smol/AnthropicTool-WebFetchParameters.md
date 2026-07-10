Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.WebFetchParameters

Type of the parameters Claude supplies when invoking the Anthropic web fetch tool.

**When to use**

Use when typing Claude-supplied web-fetch tool parameters after schema
validation, before enforcing URL provenance or length constraints.

**Details**

The payload contains the single `url` parameter for Anthropic web fetch.

**Gotchas**

The URL must be user-provided or from prior search/fetch results. Maximum URL
length is 250 characters.

**Signature**

```ts
type WebFetchParameters = typeof WebFetchParameters.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L2355)

Since v4.0.0