# tapError

Performs an additional effect after an unsuccessful request.

To import and use `tapError` from the "HttpClient" module:

```ts
import * as HttpClient from "@effect/platform/HttpClient"
// Can be accessed like this
HttpClient.tapError
```

**Signature**

```ts
export declare const tapError: {
  <_, E, E2, R2>(
    f: (e: NoInfer<E>) => Effect.Effect<_, E2, R2>
  ): <R>(self: HttpClient.With<E, R>) => HttpClient.With<E | E2, R | R2>
  <E, R, _, E2, R2>(
    self: HttpClient.With<E, R>,
    f: (e: NoInfer<E>) => Effect.Effect<_, E2, R2>
  ): HttpClient.With<E | E2, R | R2>
}
```
