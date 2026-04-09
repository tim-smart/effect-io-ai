Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.fromResponseParts

Creates a Prompt from the response parts of a previous interaction with a
large language model.

Converts streaming or non-streaming AI response parts into a structured
prompt, typically for use in conversation history or further processing.

**Example**

```ts
import { Prompt, Response } from "effect/unstable/ai"

const responseParts: ReadonlyArray<Response.AnyPart> = [
  Response.makePart("text", {
    text: "Hello there!"
  }),
  Response.makePart("tool-call", {
    id: "call_1",
    name: "get_time",
    params: {},
    providerExecuted: false
  }),
  Response.makePart("tool-result", {
    id: "call_1",
    name: "get_time",
    isFailure: false,
    result: "10:30 AM",
    encodedResult: "10:30 AM",
    providerExecuted: false,
    preliminary: false
  })
]

const prompt = Prompt.fromResponseParts(responseParts)
// Creates an assistant message with the response content
```

**Signature**

```ts
declare const fromResponseParts: (parts: ReadonlyArray<Response.AnyPart>) => Prompt
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L1924)

Since v4.0.0