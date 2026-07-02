Package: `effect`<br />
Module: `HttpClientRequest`<br />

## HttpClientRequest.Options.NoUrl

Request options that omit the method and URL for helpers that already receive those values separately.

**Signature**

```ts
export interface NoUrl extends Omit<Options, "method" | "url"> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpClientRequest.ts#L89)

Since v4.0.0