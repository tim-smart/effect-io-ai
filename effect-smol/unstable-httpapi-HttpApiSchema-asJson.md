Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asJson

Marks a schema as a JSON payload / response.

**Signature**

```ts
declare const asJson: (options?: { readonly contentType?: string; }) => <S extends Schema.Top>(self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L284)

Since v4.0.0