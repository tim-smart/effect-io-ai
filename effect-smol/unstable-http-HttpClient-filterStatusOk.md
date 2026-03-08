Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.filterStatusOk

Filters responses that return a 2xx status code.

**Signature**

```ts
declare const filterStatusOk: <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | Error.HttpClientError, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L497)

Since v4.0.0