Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.filterStatus

Filters responses by HTTP status code.

**Signature**

```ts
declare const filterStatus: { (f: (status: number) => boolean): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | Error.HttpClientError, R>; <E, R>(self: HttpClient.With<E, R>, f: (status: number) => boolean): HttpClient.With<E | Error.HttpClientError, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L482)

Since v4.0.0