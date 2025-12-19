Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.tap

Performs an additional effect after a successful request.

**Signature**

```ts
declare const tap: { <_, E2, R2>(f: (response: ClientResponse.HttpClientResponse) => Effect.Effect<_, E2, R2>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>; <E, R, _, E2, R2>(self: HttpClient.With<E, R>, f: (response: ClientResponse.HttpClientResponse) => Effect.Effect<_, E2, R2>): HttpClient.With<E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L568)

Since v1.0.0