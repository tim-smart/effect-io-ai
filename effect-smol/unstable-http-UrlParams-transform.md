Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.transform

Transforms the underlying ordered key-value pairs of `UrlParams`.

**Details**

The result is wrapped in a new `UrlParams` value.

**Signature**

```ts
declare const transform: { (f: (params: UrlParams["params"]) => UrlParams["params"]): (self: UrlParams) => UrlParams; (self: UrlParams, f: (params: UrlParams["params"]) => UrlParams["params"]): UrlParams; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L375)

Since v4.0.0