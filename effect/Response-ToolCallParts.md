Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolCallParts

Utility type that extracts tool call parts from a set of tools.

**Signature**

```ts
type ToolCallParts<Tools> = {
  [Name in keyof Tools]: Name extends string ? ToolCallPart<Name, Tool.Parameters<Tools[Name]>>
    : never
}[keyof Tools]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L413)

Since v1.0.0