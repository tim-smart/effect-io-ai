Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.mapRequest

Appends a transformation of the request object before sending it.

**Signature**

```ts
declare const mapRequest: { (f: (a: HttpClientRequest.HttpClientRequest) => HttpClientRequest.HttpClientRequest): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, f: (a: HttpClientRequest.HttpClientRequest) => HttpClientRequest.HttpClientRequest): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L647)

Since v4.0.0