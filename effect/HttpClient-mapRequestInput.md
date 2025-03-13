Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.mapRequestInput

Prepends a transformation of the request object before sending it.

**Signature**

```ts
declare const mapRequestInput: { (f: (a: ClientRequest.HttpClientRequest) => ClientRequest.HttpClientRequest): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, f: (a: ClientRequest.HttpClientRequest) => ClientRequest.HttpClientRequest): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L444)

Since v1.0.0