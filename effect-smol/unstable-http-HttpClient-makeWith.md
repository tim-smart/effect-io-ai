Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.makeWith

Constructs an `HttpClient.With` from a preprocessing function and a postprocessing function.

**Details**

`execute` applies preprocessing to the request and then passes the resulting request effect to postprocessing.

**Signature**

```ts
declare const makeWith: <E2, R2, E, R>(postprocess: (request: Effect.Effect<HttpClientRequest.HttpClientRequest, E2, R2>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>, preprocess: HttpClient.Preprocess<E2, R2>) => HttpClient.With<E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L607)

Since v4.0.0