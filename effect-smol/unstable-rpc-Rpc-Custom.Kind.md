Package: `effect`<br />
Module: `Rpc`<br />

## Rpc.Custom.Kind

Applies a custom constructor definition to concrete success and error
schemas and returns its transformed output schema type.

**Signature**

```ts
type Kind<Def, Success, Error> = (Def & {
    readonly success: Success
    readonly error: Error
  })["out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Rpc.ts#L1098)

Since v4.0.0