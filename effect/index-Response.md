Package: `@effect/ai`<br />
Module: `index`<br />

## index.Response

Re-exports all named exports from the "./Response.js" module as `Response`.

**Example**

```ts
import { Response } from "@effect/ai"

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
export * as Response from "./Response.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L405)

Since v1.0.0