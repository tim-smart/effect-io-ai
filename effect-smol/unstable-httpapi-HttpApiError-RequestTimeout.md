Package: `effect`<br />
Module: `HttpApiError`<br />

## HttpApiError.RequestTimeout

Built-in HTTP API error for a `408 Request Timeout` response. When used directly
as a server response, it renders as an empty response with status 408.

**Signature**

```ts
declare class RequestTimeout
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiError.ts#L253)

Since v4.0.0