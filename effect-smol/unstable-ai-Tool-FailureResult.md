Package: `effect`<br />
Module: `Tool`<br />

## Tool.FailureResult

A utility type for the actual failure value that can appear in tool results.
When `failureMode` is `"return"`, this includes both user-defined failures
and `AiError`.

**Signature**

```ts
type FailureResult<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["failureMode"] extends "return" ? _Config["failure"]["Type"] | AiError.AiError
  : _Config["failure"]["Type"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L784)

Since v1.0.0