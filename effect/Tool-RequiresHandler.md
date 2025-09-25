Package: `@effect/ai`<br />
Module: `Tool`<br />

## Tool.RequiresHandler

A utility type to determine if the specified tool requires a user-defined
handler to be implemented.

**Signature**

```ts
type RequiresHandler<Tool> = Tool extends
  ProviderDefined<infer _Name, infer _Config, infer _RequiresHandler> ? _RequiresHandler : true
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Tool.ts#L701)

Since v1.0.0