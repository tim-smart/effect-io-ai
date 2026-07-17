Package: `effect`<br />
Module: `HttpClient`<br />

## HttpClient.HttpClient.With

Parameterized HTTP client that may fail with `E` and require environment `R`.

**Details**

It exposes preprocessing, postprocessing, direct request execution, and method-specific helpers.

**Signature**

```ts
export interface With<E, R = never> extends Pipeable, Inspectable.Inspectable {
    readonly [TypeId]: typeof TypeId
    readonly preprocess: Preprocess<E, R>
    readonly postprocess: Postprocess<E, R>
    readonly execute: (
      request: HttpClientRequest.HttpClientRequest
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>

    readonly get: (
      url: string | URL,
      options?: HttpClientRequest.Options.NoUrl
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
    readonly head: (
      url: string | URL,
      options?: HttpClientRequest.Options.NoUrl
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
    readonly post: (
      url: string | URL,
      options?: HttpClientRequest.Options.NoUrl
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
    readonly patch: (
      url: string | URL,
      options?: HttpClientRequest.Options.NoUrl
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
    readonly put: (
      url: string | URL,
      options?: HttpClientRequest.Options.NoUrl
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
    readonly del: (
      url: string | URL,
      options?: HttpClientRequest.Options.NoUrl
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
    readonly options: (
      url: string | URL,
      options?: HttpClientRequest.Options.NoUrl
    ) => Effect.Effect<HttpClientResponse.HttpClientResponse, E, R>
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClient.ts#L79)

Since v4.0.0