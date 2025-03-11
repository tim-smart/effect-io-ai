## mapRequestEffect

Appends an effectful transformation of the request object before sending it.

**Signature**

```ts
declare const mapRequestEffect: { <E2, R2>(f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<ClientRequest.HttpClientRequest, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>; <E, R, E2, R2>(self: HttpClient.With<E, R>, f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<ClientRequest.HttpClientRequest, E2, R2>): HttpClient.With<E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L428)

Since v1.0.0