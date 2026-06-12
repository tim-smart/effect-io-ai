Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asFormUrlEncoded

Marks a schema as an `application/x-www-form-urlencoded` payload or response.

**Details**

The schema's encoded side must be a record of strings.

**Signature**

```ts
declare const asFormUrlEncoded: (options?: { readonly contentType?: string; }) => <S extends Schema.Top>(self: S) => S["Rebuild"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L614)

Since v4.0.0