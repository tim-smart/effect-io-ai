Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.UnprocessableEntityNoContent

No-content schema variant for `UnprocessableEntity`, decoding an empty 422
response into an `UnprocessableEntity` error value.

**Signature**

```ts
declare const UnprocessableEntityNoContent: HttpApiSchema.asNoContent<typeof UnprocessableEntity>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiError.ts#L334)

Since v4.0.0