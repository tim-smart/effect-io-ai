Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.filterStatus

Filters responses by HTTP status code.

**Signature**

```ts
declare const filterStatus: { (f: (status: number) => boolean): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | Error.ResponseError, R>; <E, R>(self: HttpClient.With<E, R>, f: (status: number) => boolean): HttpClient.With<E | Error.ResponseError, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L331)

Since v1.0.0