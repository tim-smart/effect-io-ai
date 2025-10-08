Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.Toolkit

Represents a collection of tools which can be used to enhance the
capabilities of a large language model.

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
export interface Toolkit<in out Tools extends Record<string, Tool.Any>> extends
  Effect.Effect<
    WithHandler<Tools>,
    never,
    Tool.HandlersFor<Tools>
  >,
  Inspectable,
  Pipeable
{
  readonly [TypeId]: TypeId

  new(_: never): {}

  /**
   * A record containing all tools in this toolkit.
   */
  readonly tools: Tools

  /**
   * A helper method which can be used for type-safe handler declarations.
   */
  of<Handlers extends HandlersFrom<Tools>>(handlers: Handlers): Handlers

  /**
   * Converts a toolkit into an Effect Context containing handlers for each tool
   * in the toolkit.
   */
  toContext<Handlers extends HandlersFrom<Tools>, EX = never, RX = never>(
    build: Handlers | Effect.Effect<Handlers, EX, RX>
  ): Effect.Effect<Context.Context<Tool.HandlersFor<Tools>>, EX, RX>

  /**
   * Converts a toolkit into a Layer containing handlers for each tool in the
   * toolkit.
   */
  toLayer<Handlers extends HandlersFrom<Tools>, EX = never, RX = never>(
    /**
     * Handler functions or Effect that produces handlers.
     */
    build: Handlers | Effect.Effect<Handlers, EX, RX>
  ): Layer.Layer<Tool.HandlersFor<Tools>, EX, Exclude<RX, Scope.Scope>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L111)

Since v1.0.0