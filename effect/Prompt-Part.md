Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.Part

Union type representing all possible content parts within messages.

Parts are the building blocks of message content, supporting text, files,
reasoning, tool calls, and tool results.

**Signature**

```ts
type Part = TextPart | ReasoningPart | FilePart | ToolCallPart | ToolResultPart
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L140)

Since v1.0.0