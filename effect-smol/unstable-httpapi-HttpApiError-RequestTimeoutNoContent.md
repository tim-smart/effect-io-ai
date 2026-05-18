Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.RequestTimeoutNoContent

No-content schema variant for `RequestTimeout`, decoding an empty 408 response
into a `RequestTimeout` error value.

**Signature**

```ts
declare const RequestTimeoutNoContent: HttpApiSchema.asNoContent<typeof RequestTimeout>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L252)

Since v4.0.0