Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.ByName

A utility mapped type which associates tool names with tools.

**Signature**

```ts
type ByName<Tools> = {
  readonly [Tool in Tools as Tool["name"]]: Tool
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L237)

Since v1.0.0