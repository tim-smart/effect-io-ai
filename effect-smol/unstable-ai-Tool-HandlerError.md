Package: `effect`<br />
Module: `Tool`<br />

## Tool.HandlerError

A utility type which represents the possible errors that can be raised by
a tool call's handler.

**Signature**

```ts
type HandlerError<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? _Config["failureMode"] extends "error" ? _Config["failure"]["Type"] | AiError.AiError
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tool.ts#L951)

Since v1.0.0