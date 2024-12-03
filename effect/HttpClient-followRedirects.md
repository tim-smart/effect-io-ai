# followRedirects

Follows HTTP redirects up to a specified number of times.

To import and use `followRedirects` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.followRedirects
```

**Signature**

```ts
export declare const followRedirects: {
  (maxRedirects?: number | undefined): <E, R>(self: HttpClient<E, R>) => HttpClient<E, R>
  <E, R>(self: HttpClient<E, R>, maxRedirects?: number | undefined): HttpClient<E, R>
}
```
