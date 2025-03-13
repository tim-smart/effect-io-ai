Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.filterStatusOk

Filters responses that return a 2xx status code.

**Signature**

```ts
declare const filterStatusOk: <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E | Error.ResponseError, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L341)

Since v1.0.0