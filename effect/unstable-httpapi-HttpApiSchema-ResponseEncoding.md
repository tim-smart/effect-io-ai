Package: `effect`<br />
Module: `HttpApiSchema`<br />

## HttpApiSchema.ResponseEncoding

HTTP API response body encoding metadata.

**Signature**

```ts
type ResponseEncoding = {
  readonly _tag: "Json" | "FormUrlEncoded" | "Uint8Array" | "Text"
  readonly contentType: string
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiSchema.ts#L68)

Since v4.0.0