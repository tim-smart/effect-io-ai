Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.NotAcceptableNoContent

No-content schema variant for `NotAcceptable`, decoding an empty 406 response
into a `NotAcceptable` error value.

**Signature**

```ts
declare const NotAcceptableNoContent: HttpApiSchema.asNoContent<typeof NotAcceptable>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L212)

Since v4.0.0