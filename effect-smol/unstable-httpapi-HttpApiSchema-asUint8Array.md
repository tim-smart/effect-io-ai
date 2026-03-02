Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asUint8Array

Marks a schema as a binary payload / response.

The schema encoded side must be a `Uint8Array`.

**Signature**

```ts
declare const asUint8Array: (options?: { readonly contentType?: string; }) => <S extends Schema.Top & { readonly Encoded: Uint8Array; }>(self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L329)

Since v4.0.0