Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.getFirst

Returns the first value for a query parameter key safely.

**When to use**

Use when duplicate query parameters are ordered and the first occurrence has
precedence.

**Details**

Returns `Option.none` when the key is absent.

**Signature**

```ts
declare const getFirst: { (key: string): (self: UrlParams) => Option.Option<string>; (self: UrlParams, key: string): Option.Option<string>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L306)

Since v4.0.0