# withCookiesRef

Associates a `Ref` of cookies with the client for handling cookies across requests.

To import and use `withCookiesRef` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.withCookiesRef
```

**Signature**

```ts
export declare const withCookiesRef: {
  (ref: Ref<Cookies>): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>
  <E, R>(self: HttpClient.With<E, R>, ref: Ref<Cookies>): HttpClient.With<E, R>
}
```
