Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.BadRequestNoContent

No-content schema variant for `BadRequest`, decoding an empty 400 response into
a `BadRequest` error value.

**Signature**

```ts
declare const BadRequestNoContent: HttpApiSchema.asNoContent<typeof BadRequest>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L62)

Since v4.0.0