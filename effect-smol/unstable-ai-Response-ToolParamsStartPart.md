Package: `effect`<br />
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
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1100)

Since v1.0.0