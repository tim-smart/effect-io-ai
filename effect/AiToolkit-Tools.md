Package: `@effect/ai`<br />
Module: `AiToolkit`<br />

## AiToolkit.Tools

A utility type which returns the tools in an `AiToolkit`.

**Signature**

```ts
type Tools<Toolkit> = Toolkit extends AiToolkit<infer Tool> ? string extends Tool["name"] ? never : Tool : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/AiToolkit.ts#L104)

Since v1.0.0