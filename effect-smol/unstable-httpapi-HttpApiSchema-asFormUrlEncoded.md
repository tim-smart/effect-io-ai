Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asFormUrlEncoded

Marks a schema as a URL params payload / response.

The schema encoded side must be a record of strings.

**Signature**

```ts
declare const asFormUrlEncoded: (options?: { readonly contentType?: string; }) => <S extends Schema.Top & { readonly Encoded: Record<string, string | ReadonlyArray<string> | undefined>; }>(self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L298)

Since v4.0.0