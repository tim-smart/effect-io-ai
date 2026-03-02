Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.make

Creates a new toolkit from the specified tools.

This is the primary constructor for creating toolkits. It accepts multiple
tools and organizes them into a toolkit that can be provided to AI language
models.

**Example**

```ts
import { Schema } from "effect"
import { Tool, Toolkit } from "effect/unstable/ai"

const GetCurrentTime = Tool.make("GetCurrentTime", {
  description: "Get the current timestamp",
  success: Schema.Number
})

const GetWeather = Tool.make("get_weather", {
  description: "Get weather information",
  parameters: Schema.Struct({ location: Schema.String }),
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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L518)

Since v1.0.0