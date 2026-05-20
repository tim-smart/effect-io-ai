Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.getAll

Returns all values for a query parameter key in insertion order.

**Details**

Returns an empty array when the key is absent.

**Signature**

```ts
declare const getAll: { (key: string): (self: UrlParams) => ReadonlyArray<string>; (self: UrlParams, key: string): ReadonlyArray<string>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L290)

Since v4.0.0