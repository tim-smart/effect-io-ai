Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.mapRequestEffect

Appends an effectful transformation of the request object before sending it.

**Signature**

```ts
declare const mapRequestEffect: { <E2, R2>(f: (a: HttpClientRequest.HttpClientRequest) => Effect.Effect<HttpClientRequest.HttpClientRequest, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>; <E, R, E2, R2>(self: HttpClient.With<E, R>, f: (a: HttpClientRequest.HttpClientRequest) => Effect.Effect<HttpClientRequest.HttpClientRequest, E2, R2>): HttpClient.With<E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L668)

Since v4.0.0