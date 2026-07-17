Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.Options

Options for constructing or modifying an `HttpClientRequest`.

**Signature**

```ts
export interface Options {
  readonly method?: HttpMethod | undefined
  readonly url?: string | URL | undefined
  readonly urlParams?: UrlParams.Input | undefined
  readonly hash?: string | undefined
  readonly headers?: Headers.Input | undefined
  readonly body?: HttpBody.HttpBody | undefined
  readonly accept?: string | undefined
  readonly acceptJson?: boolean | undefined
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpClientRequest.ts#L66)

Since v4.0.0