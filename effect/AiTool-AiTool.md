Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.AiTool

A `AiTool` represents an action that a large language model can take within
your application. The results of a tool call can be returned back to the
large language model to be incorporated into its next response.

**Signature**

```ts
export interface AiTool<
  out Name extends string,
  out Parameters extends AnyStructSchema = Schema.Struct<{}>,
  out Success extends Schema.Schema.Any = typeof Schema.Void,
  out Failure extends Schema.Schema.All = typeof Schema.Never,
  out Requirements = never
> extends Pipeable {
  readonly [TypeId]: {
    readonly _Requirements: Types.Covariant<Requirements>
  }

  /**
   * The name of the tool.
   */
  readonly name: Name

  /**
   * The optional description of the tool.
   */
  readonly description?: string | undefined

  /**
   * A key for the tool, used to identify the tool within a `Context`.
   */
  readonly key: string

  /**
   * A `Schema` representing the type of the parameters that a tool handler
   * must be called with.
   */
  readonly parametersSchema: Parameters

  /**
   * A `Schema` representing the type that a tool returns from its handler
   * if successful.
   */
  readonly successSchema: Success

  /**
   * A `Schema` representing the type that a tool returns from its handler
   * if it fails.
   */
  readonly failureSchema: Failure

  /**
   * Adds a requirement on a particular service for the tool call to be able to
   * be executed.
   */
  addRequirement<Requirement>(): AiTool<Name, Parameters, Success, Failure, Requirements | Requirement>

  /**
   * Set the schema to use for tool handler success.
   */
  setSuccess<SuccessSchema extends Schema.Schema.Any>(schema: SuccessSchema): AiTool<
    Name,
    Parameters,
    SuccessSchema,
    Failure
  >

  /**
   * Set the schema to use for tool handler failure.
   */
  setFailure<FailureSchema extends Schema.Schema.Any>(schema: FailureSchema): AiTool<
    Name,
    Parameters,
    Success,
    FailureSchema
  >

  /**
   * Set the schema for the tool parameters.
   */
  setParameters<ParametersSchema extends Schema.Struct<any> | Schema.Struct.Fields>(
    schema: ParametersSchema
  ): AiTool<
    Name,
    ParametersSchema extends Schema.Struct<infer _> ? ParametersSchema
      : ParametersSchema extends Schema.Struct.Fields ? Schema.Struct<ParametersSchema>
      : never,
    Success
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L34)

Since v1.0.0