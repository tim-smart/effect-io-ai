Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client.Response

Computes the value returned by a client method for a success type and response
mode.

**Signature**

```ts
type Response<Success, Mode> = [Mode] extends ["decoded-and-response"]
    ? [Success, HttpClientResponse.HttpClientResponse]
    : [Mode] extends ["response-only"] ? HttpClientResponse.HttpClientResponse
    : Success
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiClient.ts#L119)

Since v4.0.0