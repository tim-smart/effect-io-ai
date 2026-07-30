Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.withScope

Ties the lifetime of the `HttpClientRequest` to a `Scope`.

**Signature**

```ts
declare const withScope: <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R | Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L732)

Since v1.0.0