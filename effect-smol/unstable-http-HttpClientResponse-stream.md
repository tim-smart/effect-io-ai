Package: `effect`<br />
Module: `HttpClientResponse`<br />

## HttpClientResponse.stream

Converts an effect producing an `HttpClientResponse` into a stream of response body bytes.

**Signature**

```ts
declare const stream: <E, R>(effect: Effect.Effect<HttpClientResponse, E, R>) => Stream.Stream<Uint8Array, Error.HttpClientError | E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientResponse.ts#L146)

Since v4.0.0