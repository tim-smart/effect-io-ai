Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.UnauthorizedNoContent

No-content schema variant for `Unauthorized`, decoding an empty 401 response
into an `Unauthorized` error value.

**Signature**

```ts
declare const UnauthorizedNoContent: HttpApiSchema.asNoContent<typeof Unauthorized>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiError.ts#L92)

Since v4.0.0