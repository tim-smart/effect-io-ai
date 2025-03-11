## withCookiesRef

Associates a `Ref` of cookies with the client for handling cookies across requests.

**Signature**

```ts
declare const withCookiesRef: { (ref: Ref<Cookies>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, ref: Ref<Cookies>): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L596)

Since v1.0.0