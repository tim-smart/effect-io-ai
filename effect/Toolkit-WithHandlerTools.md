Package: `@effect/ai`<br />
Module: `Toolkit`<br />

## Toolkit.WithHandlerTools

A utility type which can be used to extract the tools from a toolkit with handlers.

**Signature**

```ts
type WithHandlerTools<T> = T extends WithHandler<infer Tools> ? Tools : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/ai/ai/src/Toolkit.ts#L209)

Since v1.0.0