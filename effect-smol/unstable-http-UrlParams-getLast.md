Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.getLast

Returns the last value for a query parameter key.

Returns `Option.none` when the key is absent.

**Signature**

```ts
declare const getLast: { (key: string): (self: UrlParams) => Option.Option<string>; (self: UrlParams, key: string): Option.Option<string>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L313)

Since v4.0.0