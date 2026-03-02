Package: `effect`<br />
Module: `Response`<br />

## Response.ToolResultPartEncoded

Encoded representation of tool result parts for serialization.

**Signature**

```ts
export interface ToolResultPartEncoded extends BasePartEncoded<"tool-result", ToolResultPartMetadata> {
  /**
   * Unique identifier matching the original tool call.
   */
  readonly id: string
  /**
   * Name of the tool being called, which corresponds to the name of the tool
   * in the `Toolkit` included with the request.
   */
  readonly name: string
  /**
   * The result returned by the tool execution.
   */
  readonly result: unknown
  /**
   * Whether or not the result of executing the tool call handler was an error.
   */
  readonly isFailure: boolean
  /**
   * Whether the tool was executed by the provider (true) or framework (false).
   */
  readonly providerExecuted?: boolean | undefined
  /**
   * Whether this is a preliminary (intermediate) result.
   *
   * Only applicable for framework-executed tools during streaming.
   */
  readonly preliminary?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Response.ts#L1566)

Since v1.0.0