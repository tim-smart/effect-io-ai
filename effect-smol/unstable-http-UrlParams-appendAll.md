Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.appendAll

Appends all query parameters produced from the supplied input.

**Details**

Existing parameters are preserved.

**Signature**

```ts
declare const appendAll: { (input: Input): (self: UrlParams) => UrlParams; (self: UrlParams, input: Input): UrlParams; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L436)

Since v4.0.0