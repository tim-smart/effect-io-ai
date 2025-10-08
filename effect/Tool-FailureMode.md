Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.FailureMode

The strategy used for handling errors returned from tool call handler
execution.

If set to `"error"` (the default), errors that occur during tool call handler
execution will be returned in the error channel of the calling effect.

If set to `"return"`, errors that occur during tool call handler execution
will be captured and returned as part of the tool call result.

**Signature**

```ts
type FailureMode = "error" | "return"
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L352)

Since v1.0.0