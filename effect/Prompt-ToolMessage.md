Package: `@effect/ai`<br />
Module: `Prompt`<br />

## Prompt.ToolMessage

Message representing tool execution results.

**Example**

```ts
import { Prompt } from "@effect/ai"

const toolMessage: Prompt.ToolMessage = Prompt.makeMessage("tool", {
  content: [
    Prompt.makePart("tool-result", {
      id: "call_123",
      name: "search_web",
      isFailure: false,
      result: {
        query: "TypeScript best practices",
        results: [
          { title: "TypeScript Handbook", url: "https://..." },
          { title: "Effective TypeScript", url: "https://..." }
        ]
      },
      providerExecuted: false
    })
  ]
})
```

**Signature**

```ts
export interface ToolMessage extends BaseMessage<"tool", ToolMessageOptions> {
  /**
   * Array of tool result parts.
   */
  readonly content: ReadonlyArray<ToolMessagePart>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Prompt.ts#L1174)

Since v1.0.0