Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.make

Creates a new toolkit from the specified tools.

This is the primary constructor for creating toolkits. It accepts multiple tools
and organizes them into a toolkit that can be provided to AI language models.
Tools can be either Tool instances or TaggedRequest schemas.

**Example**

```ts
import { Toolkit, Tool } from "@effect/ai"
import { Schema } from "effect"

const GetCurrentTime = Tool.make("GetCurrentTime", {
  description: "Get the current timestamp",
  success: Schema.Number
})

const GetWeather = Tool.make("get_weather", {
  description: "Get weather information",
  parameters: { location: Schema.String },
  success: Schema.Struct({
    temperature: Schema.Number,
    condition: Schema.String
  })
})

const toolkit = Toolkit.make(GetCurrentTime, GetWeather)
```

**Signature**

```ts
declare const make: <Tools extends ReadonlyArray<Tool.Any>>(...tools: Tools) => Toolkit<ToolsByName<Tools>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L429)

Since v1.0.0