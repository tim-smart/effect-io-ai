Package: `@effect/ai`<br />
Module: `index`<br />

## index.Toolkit

Re-exports all named exports from the "./Toolkit.js" module as `Toolkit`.

**Example**

```ts
import { Toolkit, Tool } from "@effect/ai"
import { Effect, Schema } from "effect"

// Create individual tools
const GetCurrentTime = Tool.make("GetCurrentTime", {
  description: "Get the current timestamp",
  success: Schema.Number
})

const GetWeather = Tool.make("GetWeather", {
  description: "Get weather for a location",
  parameters: { location: Schema.String },
  success: Schema.Struct({
    temperature: Schema.Number,
    condition: Schema.String
  })
})

// Create a toolkit with multiple tools
const MyToolkit = Toolkit.make(GetCurrentTime, GetWeather)

const MyToolkitLayer = MyToolkit.toLayer({
  GetCurrentTime: () => Effect.succeed(Date.now()),
  GetWeather: ({ location }) => Effect.succeed({
    temperature: 72,
    condition: "sunny"
  })
})
```

**Signature**

```ts
export * as Toolkit from "./Toolkit.js"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/index.ts#L550)

Since v1.0.0