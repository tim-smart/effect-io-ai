Package: `effect`<br />
Module: `Tool`<br />

## Tool.ResultEncoded

A utility type to extract the encoded type of the tool call result whether
it succeeds or fails.

When `failureMode` is `"return"`, the result may also be an encoded `AiError`.

**Signature**

```ts
type ResultEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["failureMode"] extends "return" ? SuccessEncoded<T> | FailureEncoded<T> | AiError.AiErrorEncoded
  : SuccessEncoded<T> | FailureEncoded<T>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L832)

Since v1.0.0