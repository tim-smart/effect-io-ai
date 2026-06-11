Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.set

Sets a query parameter to a single value.

**Details**

Existing values for the same key are removed, and the new value is appended to
the end.

**Signature**

```ts
declare const set: { (key: string, value: Coercible): (self: UrlParams) => UrlParams; (self: UrlParams, key: string, value: Coercible): UrlParams; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L351)

Since v4.0.0