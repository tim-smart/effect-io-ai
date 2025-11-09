Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolParamsEndPart

Response part indicating the end of streaming tool parameters.

Marks the completion of a tool parameter stream, indicating that all
parameter data has been sent and the tool call is ready to be executed.

**Signature**

```ts
export interface ToolParamsEndPart extends BasePart<"tool-params-end", ToolParamsEndPartMetadata> {
  /**
   * Unique identifier matching the corresponding tool parameter chunk.
   */
  readonly id: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1310)

Since v1.0.0