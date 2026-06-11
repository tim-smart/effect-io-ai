Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.withCookiesRef

Adds a `Ref` of cookies to the client for handling cookies across requests.

**When to use**

Use to add shared cookie storage to a client so response cookies are retained
and sent by later requests.

**Signature**

```ts
declare const withCookiesRef: { (ref: Ref.Ref<Cookies.Cookies>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, ref: Ref.Ref<Cookies.Cookies>): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClient.ts#L1345)

Since v4.0.0