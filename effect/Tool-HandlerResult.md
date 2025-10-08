Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.HandlerResult

Represents the result of calling the handler for a particular `Tool`.

**Signature**

```ts
export interface HandlerResult<Tool extends Any> {
  /**
   * Whether the result of executing the tool call handler was an error or not.
   */
  readonly isFailure: boolean
  /**
   * The result of executing the handler for a particular tool.
   */
  readonly result: Result<Tool>
  /**
   * The pre-encoded tool call result of executing the handler for a particular
   * tool as a JSON-serializable value. The encoded result can be incorporated
   * into subsequent requests to the large language model.
   */
  readonly encodedResult: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L747)

Since v1.0.0