Package: `@effect/ai`<br />
Module: `AiToolkit`<br />

## AiToolkit.HandlersFrom

A utility mapped type which associates tool names with their handlers.

**Signature**

```ts
type HandlersFrom<Tools> = {
  [Tool in Tools as Tool["name"]]: (params: AiTool.Parameters<Tool>) => AiTool.HandlerEffect<Tool>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiToolkit.ts#L94)

Since v1.0.0