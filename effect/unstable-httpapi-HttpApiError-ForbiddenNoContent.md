Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.ForbiddenNoContent

No-content schema variant for `Forbidden`, decoding an empty 403 response into a
`Forbidden` error value.

**Signature**

```ts
declare const ForbiddenNoContent: HttpApiSchema.asNoContent<typeof Forbidden>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiError.ts#L122)

Since v4.0.0