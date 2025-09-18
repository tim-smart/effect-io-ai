Package: `@effect/ai`<br />
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
   * Handler function for executing tool calls.
   *
   * Receives a tool name and parameters, validates the input, executes the
   * corresponding handler, and returns both the typed result and encoded result.
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
    {
      readonly result: Tool.Success<Tools[Name]>
      readonly encodedResult: unknown
    },
    Tool.Failure<Tools[Name]>,
    Tool.Requirements<Tools[Name]>
  >
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L207)

Since v1.0.0