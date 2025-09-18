Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Tool

A user-defined tool that language models can call to perform actions.

Tools represent actionable capabilities that large language models can invoke
to extend their functionality beyond text generation. Each tool has a defined
schema for parameters, results, and failures.

**Example**

```ts
import { Tool } from "@effect/ai"
import { Schema } from "effect"

// Create a weather lookup tool
const GetWeather = Tool.make("GetWeather", {
  description: "Get current weather for a location",
  parameters: {
    location: Schema.String,
    units: Schema.Literal("celsius", "fahrenheit")
  },
  success: Schema.Struct({
    temperature: Schema.Number,
    condition: Schema.String,
    humidity: Schema.Number
  })
})
```

**Signature**

```ts
export interface Tool<
  Name extends string,
  Config extends {
    readonly parameters: AnyStructSchema
    readonly success: Schema.Schema.Any
    readonly failure: Schema.Schema.All
  } = {
    readonly parameters: Schema.Struct<{}>
    readonly success: typeof Schema.Void
    readonly failure: typeof Schema.Never
  },
  Requirements = never
> extends Tool.Variance<Requirements> {
  /**
   * The tool identifier which is used to uniquely identify the tool. */
  readonly id: string

  /**
   * The name of the tool.
   */
  readonly name: Name

  /**
   * The optional description of the tool.
   */
  readonly description?: string | undefined

  /**
   * A `Schema` representing the parameters that a tool must be called with.
   */
  readonly parametersSchema: Config["parameters"]

  /**
   * A `Schema` representing the value that a tool must return when called if
   * the tool call is successful.
   */
  readonly successSchema: Config["success"]

  /**
   * A `Schema` representing the value that a tool must return when called if
   * it fails.
   */
  readonly failureSchema: Config["failure"]

  /**
   * A `Context` object containing tool annotations which can store metadata
   * about the tool.
   */
  readonly annotations: Context.Context<never>

  /**
   * Adds a _request-level_ dependency which must be provided before the tool
   * call handler can be executed.
   *
   * This can be useful when you want to enforce that a particular dependency
   * **MUST** be provided to each request to the large language model provider
   * instead of being provided when creating the tool call handler layer.
   */
  addDependency<Identifier, Service>(tag: Context.Tag<Identifier, Service>): Tool<
    Name,
    Config,
    Identifier | Requirements
  >

  /**
   * Set the schema to use to validate the result of a tool call when successful.
   */
  setParameters<ParametersSchema extends Schema.Struct<any> | Schema.Struct.Fields>(
    schema: ParametersSchema
  ): Tool<Name, {
    readonly parameters: ParametersSchema extends Schema.Struct<infer _> ? ParametersSchema
      : ParametersSchema extends Schema.Struct.Fields ? Schema.Struct<ParametersSchema>
      : never
    readonly success: Config["success"]
    readonly failure: Config["failure"]
  }, Requirements>

  /**
   * Set the schema to use to validate the result of a tool call when successful.
   */
  setSuccess<SuccessSchema extends Schema.Schema.Any>(schema: SuccessSchema): Tool<Name, {
    readonly parameters: Config["parameters"]
    readonly success: SuccessSchema
    readonly failure: Config["failure"]
  }, Requirements>

  /**
   * Set the schema to use to validate the result of a tool call when it fails.
   */
  setFailure<FailureSchema extends Schema.Schema.Any>(schema: FailureSchema): Tool<Name, {
    readonly parameters: Config["parameters"]
    readonly success: Config["success"]
    readonly failure: FailureSchema
  }, Requirements>

  /**
   * Add an annotation to the tool.
   */
  annotate<I, S>(tag: Context.Tag<I, S>, value: S): Tool<
    Name,
    Config,
    Requirements
  >

  /**
   * Add many annotations to the tool.
   */
  annotateContext<I>(context: Context.Context<I>): Tool<
    Name,
    Config,
    Requirements
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L112)

Since v1.0.0