Package: `@effect/ai`<br />
Module: `AiTool`<br />

## AiTool.HandlerResult

Represents the result of calling the handler for a particular tool.

**Signature**

```ts
export interface HandlerResult<Tool extends Any> {
  /**
   * The result of executing the handler for a particular tool.
   */
  readonly result: Success<Tool>
  /**
   * The encoded result of executing the handler for a particular tool, which
   * is suitable for returning back to the large language model for
   * incorporation into further responses.
   */
  readonly encodedResult: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiTool.ts#L188)

Since v1.0.0