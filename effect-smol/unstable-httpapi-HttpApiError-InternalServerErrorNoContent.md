Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.InternalServerErrorNoContent

No-content schema variant for `InternalServerError`, decoding an empty 500
response into an `InternalServerError` error value.

**Signature**

```ts
declare const InternalServerErrorNoContent: HttpApiSchema.asNoContent<typeof InternalServerError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L363)

Since v4.0.0