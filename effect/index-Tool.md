Package: `@effect/ai`<br />
Module: `index`<br />

## index.Tool

Re-exports all named exports from the "./Tool.js" module as `Tool`.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

// Define a simple calculator tool
const Calculator = Tool.make("Calculator", {
  description: "Performs basic arithmetic operations",
  parameters: {
    operation: Schema.Literal("add", "subtract", "multiply", "divide"),
    a: Schema.Number,
    b: Schema.Number
  },
  success: Schema.Number
})
```

**Signature**

```ts
export * as Tool from "./Tool.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L509)

Since v1.0.0