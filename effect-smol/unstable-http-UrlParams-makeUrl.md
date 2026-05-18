Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.makeUrl

Creates a `URL` by appending `UrlParams` and an optional hash to a URL string.

Returns a `Result` that fails with `UrlParamsError` if the URL cannot be
constructed.

**Signature**

```ts
declare const makeUrl: (url: string, params: UrlParams, hash: string | undefined) => Result.Result<URL, UrlParamsError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L441)

Since v4.0.0