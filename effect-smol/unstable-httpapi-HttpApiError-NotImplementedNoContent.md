Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.NotImplementedNoContent

No-content schema variant for `NotImplemented`, decoding an empty 501 response
into a `NotImplemented` error value.

**Signature**

```ts
declare const NotImplementedNoContent: HttpApiSchema.asNoContent<typeof NotImplemented>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L392)

Since v4.0.0