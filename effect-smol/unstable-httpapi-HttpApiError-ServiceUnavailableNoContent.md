Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.ServiceUnavailableNoContent

No-content schema variant for `ServiceUnavailable`, decoding an empty 503
response into a `ServiceUnavailable` error value.

**Signature**

```ts
declare const ServiceUnavailableNoContent: HttpApiSchema.asNoContent<typeof ServiceUnavailable>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L425)

Since v4.0.0