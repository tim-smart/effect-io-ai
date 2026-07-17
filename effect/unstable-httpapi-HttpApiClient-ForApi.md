Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.ForApi

Derives the typed client interface for an `HttpApi`, preserving any additional
client error and service requirements supplied by the caller.

**Signature**

```ts
type ForApi<Api, E, R> = Api extends
  HttpApi.HttpApi<infer _Id, infer Groups> ? Client<Groups, E, R> :
  never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiClient.ts#L68)

Since v4.0.0