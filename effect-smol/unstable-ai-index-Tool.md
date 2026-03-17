Package: `effect`<br />
Module: `index`<br />

## index.Tool

Re-exports all named exports from the "./Tool.ts" module as `Tool`.

**Example**

```ts
import { Schema } from "effect"
import { Tool } from "effect/unstable/ai"

// Define a simple calculator tool
const Calculator = Tool.make("Calculator", {
  description: "Performs basic arithmetic operations",
  parameters: Schema.Struct({
    operation: Schema.Literals(["add", "subtract", "multiply", "divide"]),
    a: Schema.Number,
    b: Schema.Number
  }),
  success: Schema.Number
})
```

**Signature**

```ts
export * as Tool from "./Tool.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L516)

Since v1.0.0