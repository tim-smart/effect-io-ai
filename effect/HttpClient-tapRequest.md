Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.tapRequest

Performs an additional effect on the request before sending it.

**Signature**

```ts
declare const tapRequest: { <_, E2, R2>(f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<_, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>; <E, R, _, E2, R2>(self: HttpClient.With<E, R>, f: (a: ClientRequest.HttpClientRequest) => Effect.Effect<_, E2, R2>): HttpClient.With<E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L581)

Since v1.0.0