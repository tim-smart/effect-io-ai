Package: `effect`<br />
Module: `Number`<br />

## Number.parse

Tries to parse a `number` from a `string` using the `Number()` function. The
following special string values are supported: "NaN", "Infinity",
"-Infinity".

**Signature**

```ts
declare const parse: (s: string) => Option<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Number.ts#L1030)

Since v2.0.0