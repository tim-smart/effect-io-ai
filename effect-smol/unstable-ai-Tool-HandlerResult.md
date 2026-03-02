Package: `effect`<br />
Module: `Tool`<br />

## Tool.HandlerResult

Represents the result of calling the handler for a particular `Tool`.

**Signature**

```ts
export interface HandlerResult<Tool extends Any> {
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
  /**
   * Whether the result of executing the tool call handler was an error or not.
   */
  readonly isFailure: boolean
  /**
   * Whether this is a preliminary (intermediate) result or the final result.
   * Preliminary results represent progress updates; only the final result
   * should be used as the authoritative output.
   */
  readonly preliminary: boolean
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L906)

Since v1.0.0