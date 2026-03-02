Package: `effect`<br />
Module: `Tool`<br />

## Tool.Result

A utility type to extract the type of the tool call result whether it
succeeds or fails.

When `failureMode` is `"return"`, the result may also be an `AiError`.

**Signature**

```ts
type Result<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["failureMode"] extends "return" ? Success<T> | Failure<T> | AiError.AiError
  : Success<T> | Failure<T>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L815)

Since v1.0.0