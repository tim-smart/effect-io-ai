Package: `effect`<br />
Module: `Schema`<br />

## Schema.BigIntFromNumber

This schema transforms a `number` into a `bigint` by parsing the number using the `BigInt` function.

It returns an error if the value can't be safely encoded as a `number` due to being out of range.

**Signature**

```ts
declare class BigIntFromNumber
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L5788)

Since v3.10.0