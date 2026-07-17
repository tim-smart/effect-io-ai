Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.MethodNotAllowedNoContent

No-content schema variant for `MethodNotAllowed`, decoding an empty 405 response
into a `MethodNotAllowed` error value.

**Signature**

```ts
declare const MethodNotAllowedNoContent: HttpApiSchema.asNoContent<typeof MethodNotAllowed>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiError.ts#L182)

Since v4.0.0