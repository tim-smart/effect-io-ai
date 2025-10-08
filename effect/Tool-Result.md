Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.Result

A utility type to extract the type of the tool call result whether it
succeeds or fails.

**Signature**

```ts
type Result<T> = T extends Tool<
  infer _Name,
  infer _Config,
  infer _Requirements
> ? Success<T> | Failure<T>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L690)

Since v1.0.0