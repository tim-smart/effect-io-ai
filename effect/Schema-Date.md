Package: `effect`<br />
Module: `Schema`<br />

## Schema.Date

This schema converts a `string` into a `Date` object using the `new Date`
constructor. It ensures that only valid date strings are accepted,
rejecting any strings that would result in an invalid date, such as `new
Date("Invalid Date")`.

**Signature**

```ts
declare const Date: typeof Date$
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6842)

Since v3.10.0