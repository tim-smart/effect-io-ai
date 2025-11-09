Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolResultSuccess

Represents a successful tool call result.

**Signature**

```ts
export interface ToolResultSuccess<Name extends string, Success> extends BaseToolResult<Name> {
  /**
   * The decoded success returned by the tool execution.
   */
  readonly result: Success
  /**
   * Whether or not the result of executing the tool call handler was an error.
   */
  readonly isFailure: false
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1554)

Since v1.0.0