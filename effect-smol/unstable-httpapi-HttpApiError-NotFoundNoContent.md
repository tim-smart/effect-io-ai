Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.NotFoundNoContent

No-content schema variant for `NotFound`, decoding an empty 404 response into a
`NotFound` error value.

**Signature**

```ts
declare const NotFoundNoContent: HttpApiSchema.asNoContent<typeof NotFound>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L182)

Since v4.0.0