Package: `@effect/platform`<br />
Module: `HttpClient`<br />

## HttpClient.withSpanNameGenerator

Customizes the span names for tracing.

```ts
import { FetchHttpClient, HttpClient } from "@effect/platform"
import { NodeRuntime } from "@effect/platform-node"
import { Effect } from "effect"

Effect.gen(function* () {
  const client = (yield* HttpClient.HttpClient).pipe(
    // Customize the span names for this HttpClient
    HttpClient.withSpanNameGenerator(
      (request) => `http.client ${request.method} ${request.url}`
    )
  )

  yield* client.get("https://jsonplaceholder.typicode.com/posts/1")
}).pipe(Effect.provide(FetchHttpClient.layer), NodeRuntime.runMain)
```

**Signature**

```ts
declare const withSpanNameGenerator: { (f: (request: ClientRequest.HttpClientRequest) => string): <E, R>(self: HttpClient.With<E, R>) => HttpClient.With<E, R>; <E, R>(self: HttpClient.With<E, R>, f: (request: ClientRequest.HttpClientRequest) => string): HttpClient.With<E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpClient.ts#L700)

Since v1.0.0