# filterStatus

Filters responses by HTTP status code.

To import and use `filterStatus` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.filterStatus
```

**Signature**

```ts
export declare const filterStatus: {
  (f: (status: number) => boolean): <E, R>(self: HttpClient<E, R>) => HttpClient<E | Error.ResponseError, R>
  <E, R>(self: HttpClient<E, R>, f: (status: number) => boolean): HttpClient<E | Error.ResponseError, R>
}
```
