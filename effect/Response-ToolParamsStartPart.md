Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolParamsStartPart

Response part indicating the start of streaming tool parameters.

Marks the beginning of tool parameter streaming with metadata about the tool
call.

**Signature**

```ts
export interface ToolParamsStartPart extends BasePart<"tool-params-start", ToolParamsStartPartMetadata> {
  /**
   * Unique identifier for this tool parameter chunk.
   */
  readonly id: string
  /**
   * Name of the tool being called, which corresponds to the name of the tool
   * in the `Toolkit` included with the request.
   */
  readonly name: string
  /**
   * Optional provider-specific name for the tool, which can be useful when the
   * name of the tool in the `Toolkit` and the name of the tool used by the
   * model are different.
   *
   * This is usually happens only with provider-defined tools which require a
   * user-space handler.
   */
  readonly providerName?: string | undefined
  /**
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted: boolean
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1039)

Since v1.0.0