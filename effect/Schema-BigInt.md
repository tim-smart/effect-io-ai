Package: `effect`<br />
Module: `Schema`<br />

## Schema.BigInt

This schema transforms a `string` into a `bigint` by parsing the string using the `BigInt` function.

It returns an error if the value can't be converted (for example when non-numeric characters are provided).

**Signature**

```ts
declare const BigInt: typeof BigInt$
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5710)

Since v3.10.0