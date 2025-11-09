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
  isFailure: false,
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
type ToolResultPart<Name, Success, Failure> = | ToolResultSuccess<Name, Success>
  | ToolResultFailure<Name, Failure>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1621)

Since v1.0.0