Package: `@effect/ai-openai`<br />
Module: `OpenAiTool`<br />

## OpenAiTool.OpenAiTool

Union of all OpenAI provider-defined tools.

**Signature**

```ts
type OpenAiTool = | ReturnType<typeof ApplyPatch>
  | ReturnType<typeof CodeInterpreter>
  | ReturnType<typeof FileSearch>
  | ReturnType<typeof Shell>
  | ReturnType<typeof ImageGeneration>
  | ReturnType<typeof LocalShell>
  | ReturnType<typeof Mcp>
  | ReturnType<typeof WebSearch>
  | ReturnType<typeof WebSearchPreview>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/openai/src/OpenAiTool.ts#L19)

Since v1.0.0