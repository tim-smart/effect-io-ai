Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.filterStatus

Succeeds with the response when its status satisfies the predicate, otherwise fails with `HttpClientError`.

**Signature**

```ts
declare const filterStatus: { (f: (status: number) => boolean): (self: HttpClientResponse) => Effect.Effect<HttpClientResponse, Error.HttpClientError>; (self: HttpClientResponse, f: (status: number) => boolean): Effect.Effect<HttpClientResponse, Error.HttpClientError>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L207)

Since v4.0.0