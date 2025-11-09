Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.makePart

Creates a new response content part of the specified type.

**Example**

```ts
import { Response } from "@effect/ai"

const textPart = Response.makePart("text", {
  text: "Hello, world!"
})

const toolCallPart = Response.makePart("tool-call", {
  id: "call_123",
  name: "get_weather",
  params: { city: "San Francisco" },
  providerExecuted: false
})
```

**Signature**

```ts
declare const makePart: <const Type extends AnyPart["type"]>(type: Type, params: Omit<Extract<AnyPart, { type: Type; }>, PartTypeId | "type" | "metadata"> & { readonly metadata?: Extract<AnyPart, { type: Type; }>["metadata"] | undefined; }) => Extract<AnyPart, { type: Type; }>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L533)

Since v1.0.0