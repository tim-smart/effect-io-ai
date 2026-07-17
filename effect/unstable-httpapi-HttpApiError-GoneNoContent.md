Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.GoneNoContent

No-content schema variant for `Gone`, decoding an empty 410 response into a
`Gone` error value.

**Signature**

```ts
declare const GoneNoContent: HttpApiSchema.asNoContent<typeof Gone>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiError.ts#L302)

Since v4.0.0