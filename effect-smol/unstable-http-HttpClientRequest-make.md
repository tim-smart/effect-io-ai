Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.make

Creates a request constructor for the specified HTTP method.

**Signature**

```ts
declare const make: <M extends HttpMethod>(method: M) => (url: string | URL, options?: Options.NoUrl | undefined) => HttpClientRequest
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L186)

Since v4.0.0