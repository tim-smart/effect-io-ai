Package: `effect`<br />
Module: `index`<br />

## index.Response

Re-exports all named exports from the "./Response.ts" module as `Response`.

**Example**

```ts
import { Response } from "effect/unstable/ai"

// Create a simple text response part
const textResponse = Response.makePart("text", {
  text: "The weather is sunny today!"
})

// Create a tool call response part
const toolCallResponse = Response.makePart("tool-call", {
  id: "call_123",
  name: "get_weather",
  params: { city: "San Francisco" },
  providerExecuted: false
})
```

**Signature**

```ts
export * as Response from "./Response.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L407)

Since v1.0.0