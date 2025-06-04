Package: `@effect/ai`<br />
Module: `AiLanguageModel`<br />

## AiLanguageModel.ToolChoice

The tool choice mode for the language model.

- `auto` (default): The model can decide whether or not to call tools, as well as which tools to call.
- `required`: The model **must** call a tool but can decide which tool will be called.
- `none`: The model **must not** call a tool.
- `{ tool: <tool_name> }`: The model must call the specified tool.

**Signature**

```ts
type ToolChoice<Tool> = "auto" | "none" | "required" | {
  readonly tool: Tool["name"]
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiLanguageModel.ts#L67)

Since v1.0.0