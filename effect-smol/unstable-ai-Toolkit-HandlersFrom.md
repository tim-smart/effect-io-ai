Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.HandlersFrom

A utility type that maps tool names to their required handler functions.

Handlers can return either the tool's custom failure type, an `AiErrorReason`
(which will be wrapped in `AiError`), or a full `AiError`.

**Signature**

```ts
type HandlersFrom<Tools> = {
  readonly [Name in keyof Tools as Tool.RequiresHandler<Tools[Name]> extends true ? Name : never]: (
    params: Tool.Parameters<Tools[Name]>,
    context: HandlerContext<Tools[Name]>
  ) => Effect.Effect<
    Tool.Success<Tools[Name]>,
    Tool.Failure<Tools[Name]> | AiError.AiError | AiError.AiErrorReason,
    Tool.HandlerServices<Tools[Name]>
  >
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L201)

Since v1.0.0