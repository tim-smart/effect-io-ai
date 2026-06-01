Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.setAll

Sets multiple query parameters from input.

**Details**

Keys present in the input replace existing values for those keys, while
unmentioned existing parameters are preserved.

**Signature**

```ts
declare const setAll: { (input: Input): (self: UrlParams) => UrlParams; (self: UrlParams, input: Input): UrlParams; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L419)

Since v4.0.0