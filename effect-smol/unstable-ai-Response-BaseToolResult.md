Package: `effect`<br />
Module: `Response`<br />

## Response.BaseToolResult

The base fields of a tool result part.

**Signature**

```ts
export interface BaseToolResult<Name extends string> extends BasePart<"tool-result", ToolResultPartMetadata> {
  /**
   * Unique identifier matching the original tool call.
   */
  readonly id: string
  /**
   * Name of the tool being called, which corresponds to the name of the tool
   * in the `Toolkit` included with the request.
   */
  readonly name: Name
  /**
   * The encoded result for serialization purposes.
   */
  readonly encodedResult: unknown
  /**
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted: boolean
  /**
   * Whether this is a preliminary (intermediate) result.
   *
   * Preliminary results represent progress updates during streaming tool
   * execution. Only the final result (where `preliminary` is `false` or
   * `undefined`) should be used as the authoritative output.
   *
   * Only applicable for framework-executed tools during streaming.
   */
  readonly preliminary: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1453)

Since v1.0.0