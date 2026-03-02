Package: `effect`<br />
Module: `Response`<br />

## Response.ToolResultParts

Utility type that extracts tool result parts from a set of tools.

**Signature**

```ts
type ToolResultParts<Tools> = {
  [Name in keyof Tools]: Name extends string
    ? ToolResultPart<Name, Tool.Success<Tools[Name]>, Tool.FailureResult<Tools[Name]>>
    : never
}[keyof Tools]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L430)

Since v1.0.0