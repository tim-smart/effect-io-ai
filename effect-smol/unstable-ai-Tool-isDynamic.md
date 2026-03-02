Package: `effect`<br />
Module: `Tool`<br />

## Tool.isDynamic

Type guard to check if a value is a dynamic tool.

**Example**

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

const DynamicTool = Tool.dynamic("DynamicTool", {
  parameters: { type: "object", properties: {} }
})

const UserDefinedTool = Tool.make("Calculator", {
  parameters: Schema.Struct({ a: Schema.Number, b: Schema.Number }),
  success: Schema.Number
})

console.log(Tool.isDynamic(DynamicTool)) // true
console.log(Tool.isDynamic(UserDefinedTool)) // false
```

**Signature**

```ts
declare const isDynamic: (u: unknown) => u is Dynamic<string, any>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L595)

Since v1.0.0