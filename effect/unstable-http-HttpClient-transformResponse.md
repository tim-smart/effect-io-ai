Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.transformResponse

Transforms a client by applying an effectful transformation to each response effect.

**Signature**

```ts
declare const transformResponse: { <E, R, E1, R1>(f: (effect: Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E1, R1>): (self: HttpClient.With<E, R>) => HttpClient.With<E1, R1>; <E, R, E1, R1>(self: HttpClient.With<E, R>, f: (effect: Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>) => Effect.Effect<HttpClientResponse.HttpClientResponse, E1, R1>): HttpClient.With<E1, R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClient.ts#L295)

Since v4.0.0