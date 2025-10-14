Package: `@effect/ai`<br />
Module: `LanguageModel`<br />

## LanguageModel.ToolChoice

The tool choice mode for the language model.
- `auto` (default): The model can decide whether or not to call tools, as
  well as which tools to call.
- `required`: The model **must** call a tool but can decide which tool will
  be called.
- `none`: The model **must not** call a tool.
- `{ tool: <tool_name> }`: The model must call the specified tool.
- `{ mode?: "auto" (default) | "required", "oneOf": [<tool-names>] }`: The
  model is restricted to the subset of tools specified by `oneOf`. When
  `mode` is `"auto"` or omitted, the model can decide whether or not a tool
  from the allowed subset of tools can be called. When `mode` is
  `"required"`, the model **must** call one tool from the allowed subset of
  tools.

**Signature**

```ts
type ToolChoice<Tools> = "auto" | "none" | "required" | {
  readonly tool: Tools
} | {
  readonly mode?: "auto" | "required"
  readonly oneOf: ReadonlyArray<Tools>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/LanguageModel.ts#L250)

Since v1.0.0