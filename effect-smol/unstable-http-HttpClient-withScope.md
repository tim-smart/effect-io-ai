Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.withScope

Ties the lifetime of the `HttpClientRequest` to a `Scope`.

**Signature**

```ts
declare const withScope: <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1254)

Since v4.0.0