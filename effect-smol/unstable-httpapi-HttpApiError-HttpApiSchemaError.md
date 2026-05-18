Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.HttpApiSchemaError

Error raised when an HTTP API request component fails schema decoding. It records
which component failed and responds as an empty `400 Bad Request` when rendered
as a server response.

**Signature**

```ts
declare class HttpApiSchemaError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L431)

Since v4.0.0