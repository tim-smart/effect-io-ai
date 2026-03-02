Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.asNoContent

Marks a schema as a no content response.

The `decode` function is used to decode the response body on the client side into a meaningful value.

**See**

- `NoContent` for a void schema with the status code 204.
- `Empty` for creating a void schema with a specific status code.

**Signature**

```ts
declare const asNoContent: <S extends Schema.Top>(options: { readonly decode: LazyArg<S["Type"]>; }) => (self: S) => asNoContent<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiSchema.ts#L163)

Since v4.0.0