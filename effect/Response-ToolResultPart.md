Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolResultPart

Response part representing the result of a tool call.

**Example**

```ts
import { Response } from "@effect/ai"

interface WeatherData {
  temperature: number
  condition: string
  humidity: number
}

const toolResultPart: Response.ToolResultPart<
  "get_weather",
  WeatherData
> = Response.makePart("tool-result", {
  id: "call_123",
  name: "get_weather",
  result: {
    temperature: 22,
    condition: "sunny",
    humidity: 65
  },
  encodedResult: {
    temperature: 22,
    condition: "sunny",
    humidity: 65
  },
  providerExecuted: false
})
```

**Signature**

```ts
export interface ToolResultPart<Name extends string, Result> extends BasePart<"tool-result", ToolResultPartMetadata> {
  /**
   * Unique identifier matching the original tool call.
   */
  readonly id: string
  /**
   * Name of the tool being called, which corresponds to the name of the tool
   * in the `Toolkit` included with the request.
   */
  readonly name: Name
  /**
   * The decoded result returned by the tool execution.
   */
  readonly result: Result
  /**
   * The encoded result for serialization purposes.
   */
  readonly encodedResult: unknown
  /**
   * Optional provider-specific name for the tool, which can be useful when the
   * name of the tool in the `Toolkit` and the name of the tool used by the
   * model are different.
   *
   * This is usually happens only with provider-defined tools which require a
   * user-space handler.
   */
  readonly providerName?: string | undefined
  /**
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1426)

Since v1.0.0