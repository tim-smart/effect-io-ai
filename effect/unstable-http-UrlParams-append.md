Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.append

Appends a query parameter value without removing existing values for the key.

**Signature**

```ts
declare const append: { (key: string, value: Coercible): (self: UrlParams) => UrlParams; (self: UrlParams, key: string, value: Coercible): UrlParams; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UrlParams.ts#L416)

Since v4.0.0