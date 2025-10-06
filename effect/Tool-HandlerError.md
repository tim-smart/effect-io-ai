Package: `@effect/ai`<br />
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
> ? _Config["failureMode"] extends "error" ? Schema.Schema.Type<_Config["failure"]>
  : never
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L781)

Since v1.0.0