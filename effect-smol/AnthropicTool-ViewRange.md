Package: `@effect/ai-anthropic`<br />
Module: `AnthropicTool`<br />

## AnthropicTool.ViewRange

A `[start, end]` line range for viewing file contents.

Lines are 1-indexed. Use -1 for end to read to end of file.

**Example**

```ts
[1, 50]    // View lines 1-50
```

**Example**

```ts
[100, -1]  // View from line 100 to end of file
```

**Signature**

```ts
declare const ViewRange: Schema.Tuple<readonly [Schema.Number, Schema.Number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/anthropic/src/AnthropicTool.ts#L825)

Since v1.0.0