Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.HandlerContext

Context provided to tool handlers during execution.

**Signature**

```ts
export interface HandlerContext<Tool extends Tool.Any> {
  /**
   * The unique identifier of the tool call, when available.
   */
  readonly toolCallId?: string | undefined
  /**
   * Emit a preliminary result during long-running tool calls.
   *
   * **Details**
   *
   * Preliminary results are streamed to the caller before the handler completes,
   * enabling real-time progress updates for lengthy operations.
   */
  readonly preliminary: (result: Tool.Success<Tool>) => Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Toolkit.ts#L108)

Since v4.0.0