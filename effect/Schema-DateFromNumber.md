Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateFromNumber

Defines a schema that converts a `number` into a `Date` object using the `new
Date` constructor. This schema does not validate the numerical input,
allowing potentially invalid values such as `NaN`, `Infinity`, and
`-Infinity` to be converted into `Date` objects. During the encoding process,
any invalid `Date` object will be encoded to `NaN`.

**Signature**

```ts
declare class DateFromNumber
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6858)

Since v3.10.0