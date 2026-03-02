Package: `effect`<br />
Module: `Tool`<br />

## Tool.FailureResultEncoded

The encoded version of `FailureResult`.

**Signature**

```ts
type FailureResultEncoded<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["failureMode"] extends "return" ? _Config["failure"]["Encoded"] | AiError.AiErrorEncoded
  : _Config["failure"]["Encoded"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L798)

Since v1.0.0