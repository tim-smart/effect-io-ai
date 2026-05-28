Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ViewRange

A `[start, end]` 1-indexed line range for viewing file contents, using `-1` as the end value to read through the end of the file.

**When to use**

Use when typing `view_range` for memory or text editor view commands.

**Signature**

```ts
type ViewRange = typeof ViewRange.Type
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L1424)

Since v4.0.0