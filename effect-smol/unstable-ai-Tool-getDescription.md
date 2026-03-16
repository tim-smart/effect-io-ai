Package: `effect`<br />
Module: `Tool`<br />

## Tool.getDescription

Extracts the description from a tool's metadata.

Returns the tool's description if explicitly set, otherwise attempts to
extract it from the parameter schema's AST annotations.

**Example**

```ts
import { Tool } from "effect/unstable/ai"

const myTool = Tool.make("example", {
  description: "This is an example tool"
})

const description = Tool.getDescription(myTool)
console.log(description) // "This is an example tool"
```

**Signature**

```ts
declare const getDescription: <Tool extends Any>(tool: Tool) => string | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L1528)

Since v1.0.0