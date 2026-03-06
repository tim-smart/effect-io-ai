Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.WithHandler

A toolkit instance with registered handlers ready for tool execution.

**Signature**

```ts
export interface WithHandler<in out Tools extends Record<string, Tool.Any>> {
  /**
   * The tools available in this toolkit instance.
   */
  readonly tools: Tools

  /**
   * Executes a tool call by name.
   *
   * Validates the input parameters, executes the corresponding handler, and
   * streams back both the typed result and encoded result. Streaming allows
   * handlers to emit preliminary results before completion.
   */
  readonly handle: <Name extends keyof Tools>(
    /**
     * The name of the tool to execute.
     */
    name: Name,
    /**
     * Parameters to pass to the tool handler.
     */
    params: Tool.Parameters<Tools[Name]>
  ) => Effect.Effect<
    Stream.Stream<
      Tool.HandlerResult<Tools[Name]>,
      Tool.HandlerError<Tools[Name]>,
      Tool.HandlerServices<Tools[Name]>
    >,
    AiError.AiError
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L218)

Since v1.0.0