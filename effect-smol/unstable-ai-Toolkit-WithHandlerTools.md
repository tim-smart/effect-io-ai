Package: `effect`<br />
Module: `Toolkit`<br />

## Toolkit.WithHandlerTools

A utility type which can be used to extract the tools from a toolkit with
handlers.

**Signature**

```ts
type WithHandlerTools<T> = T extends WithHandler<infer Tools> ? Tools : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Toolkit.ts#L252)

Since v1.0.0