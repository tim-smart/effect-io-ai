Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.AssistantMessage

Message representing large language model assistant responses.

**Example** (Creating assistant messages)

```ts
import { Prompt } from "effect/unstable/ai"

const assistantMessage: Prompt.AssistantMessage = Prompt.makeMessage(
  "assistant",
  {
    content: [
      Prompt.makePart("text", {
        text:
          "I can check the current weather for San Francisco."
      }),
      Prompt.makePart("tool-call", {
        id: "call_123",
        name: "get_weather",
        params: { city: "San Francisco" },
        providerExecuted: false
      }),
      Prompt.makePart("tool-result", {
        id: "call_123",
        name: "get_weather",
        isFailure: false,
        result: {
          temperature: 72,
          condition: "sunny"
        }
      }),
      Prompt.makePart("text", {
        text: "The weather in San Francisco is currently 72°F and sunny."
      })
    ]
  }
)
```

**Signature**

```ts
export interface AssistantMessage extends BaseMessage<"assistant", AssistantMessageOptions> {
  /**
   * Array of content parts that make up the assistant's response.
   */
  readonly content: ReadonlyArray<AssistantMessagePart>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Prompt.ts#L1385)

Since v4.0.0