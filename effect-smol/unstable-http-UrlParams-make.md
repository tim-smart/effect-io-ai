Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.make

Creates `UrlParams` from ordered string key-value pairs.

**Details**

The input pairs are used as-is and are not coerced or normalized.

**Signature**

```ts
declare const make: (params: ReadonlyArray<readonly [string, string]>) => UrlParams
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L141)

Since v4.0.0