Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asText

Marks a schema as a text payload / response.

The schema encoded side must be a string.

**Signature**

```ts
declare const asText: (options?: { readonly contentType?: string; }) => <S extends Schema.Top & { readonly Encoded: string; }>(self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L313)

Since v4.0.0