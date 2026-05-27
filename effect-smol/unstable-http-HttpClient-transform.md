Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.transform

Transforms a client by wrapping the response effect for each request.

**Details**

The transformation receives both the response effect and the original request, allowing it to change success, error, and environment behavior.

**Signature**

```ts
declare const transform: { <E, R, E1, R1>(f: (effect: Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>, request: HttpClientRequest.HttpClientRequest) => Effect.Effect<HttpClientResponse.HttpClientResponse, E1, R1>): (self: HttpClient.With<E, R>) => HttpClient.With<E | E1, R | R1>; <E, R, E1, R1>(self: HttpClient.With<E, R>, f: (effect: Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>, request: HttpClientRequest.HttpClientRequest) => Effect.Effect<HttpClientResponse.HttpClientResponse, E1, R1>): HttpClient.With<E | E1, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L283)

Since v4.0.0