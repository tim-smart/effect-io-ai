Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.getDescription

Extracts the description from a tool's metadata.

Returns the tool's description if explicitly set, otherwise attempts to
extract it from the parameter schema's AST annotations.

**Example**

```ts
import { Tool } from "@effect/ai"

const myTool = Tool.make("example", {
  description: "This is an example tool"
})

const description = Tool.getDescription(myTool)
console.log(description) // "This is an example tool"
```

**Signature**

```ts
declare const getDescription: <Name extends string, Config extends { readonly parameters: AnyStructSchema; readonly success: Schema.Schema.Any; readonly failure: Schema.Schema.All; readonly failureMode: FailureMode; }>(tool: Tool<Name, Config>) => string | undefined
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L1249)

Since v1.0.0