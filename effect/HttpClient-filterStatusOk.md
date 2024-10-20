# filterStatusOk

Filters responses that return a 2xx status code.

To import and use `filterStatusOk` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.filterStatusOk
```

**Signature**

```ts
export declare const filterStatusOk: <E, R>(self: HttpClient<E, R>) => HttpClient<E | Error.ResponseError, R>
```
