Package: `@effect/ai`<br />
Module: `Response`<br />

## Response.ToolResultFailure

Represents a failed tool call result.

**Signature**

```ts
export interface ToolResultFailure<Name extends string, Failure> extends BaseToolResult<Name> {
  /**
   * The decoded failure returned by the tool execution.
   */
  readonly result: Failure
  /**
   * Whether or not the result of executing the tool call handler was an error.
   */
  readonly isFailure: true
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Response.ts#L1566)

Since v1.0.0