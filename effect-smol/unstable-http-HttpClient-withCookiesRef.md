Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.withCookiesRef

Associates a `Ref` of cookies with the client for handling cookies across requests.

**Signature**

```ts
declare const withCookiesRef: { (ref: Ref.Ref<Cookies.Cookies>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, ref: Ref.Ref<Cookies.Cookies>): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1236)

Since v4.0.0