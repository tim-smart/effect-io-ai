Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolResultPart

Response part representing the result of a tool call.

**Example**

```ts
import { Either } from "effect"
import { Response } from "@effect/ai"

interface WeatherData {
  temperature: number
  condition: string
  humidity: number
}

const toolResultPart: Response.ToolResultPart<
  "get_weather",
  WeatherData,
  never
> = Response.toolResultPart({
  id: "call_123",
  name: "get_weather",
  result: Either.right({
    temperature: 22,
    condition: "sunny",
    humidity: 65
  }),
  encodedResult: {
    _tag: "Right",
    right: {
      temperature: 22,
      condition: "sunny",
      humidity: 65
    }
  },
  providerExecuted: false
})
```

**Signature**

```ts
export interface ToolResultPart<Name extends string, Success, Failure>
  extends BasePart<"tool-result", ToolResultPartMetadata>
{
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
  readonly result: Either.Either<Success, Failure>
  /**
   * The encoded result for serialization purposes.
   */
  readonly encodedResult: Schema.EitherEncoded<unknown, unknown>
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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1550)

Since v1.0.0