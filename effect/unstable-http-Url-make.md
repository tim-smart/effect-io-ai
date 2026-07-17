Package: `effect`<br />
Module: `Url`<br />

## Url.make

Creates a `URL` safely by appending `UrlParams` and an optional hash to a URL string.

**Details**

Returns a `Result` that fails with `UrlError` if the URL cannot be constructed.

**Signature**

```ts
declare const make: (url: string, params: UrlParams.UrlParams, hash: string | undefined) => Result.Result<URL, UrlError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Url.ts#L38)

Since v4.0.0