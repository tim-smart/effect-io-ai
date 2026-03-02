Package: `effect`<br />
Module: `index`<br />

## index.Toolkit

Re-exports all named exports from the "./Toolkit.ts" module as `Toolkit`.

**Example**

```ts
import { Effect, Schema } from "effect"
import { Tool, Toolkit } from "effect/unstable/ai"

// Create individual tools
const GetCurrentTime = Tool.make("GetCurrentTime", {
  description: "Get the current timestamp",
  success: Schema.Number
})

const GetWeather = Tool.make("GetWeather", {
  description: "Get weather for a location",
  parameters: Schema.Struct({ location: Schema.String }),
  success: Schema.Struct({
    temperature: Schema.Number,
    condition: Schema.String
  })
})

// Create a toolkit with multiple tools
const MyToolkit = Toolkit.make(GetCurrentTime, GetWeather)

const MyToolkitLayer = MyToolkit.toLayer({
  GetCurrentTime: () => Effect.succeed(Date.now()),
  GetWeather: ({ location }) =>
    Effect.succeed({
      temperature: 72,
      condition: "sunny"
    })
})
```

**Signature**

```ts
export * as Toolkit from "./Toolkit.ts"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/index.ts#L535)

Since v1.0.0