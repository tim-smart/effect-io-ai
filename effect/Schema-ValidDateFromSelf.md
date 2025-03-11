## ValidDateFromSelf

Defines a schema that ensures only valid dates are accepted. This schema
rejects values like `new Date("Invalid Date")`, which, despite being a `Date`
instance, represents an invalid date. Such stringent validation ensures that
all date objects processed through this schema are properly formed and
represent real dates.

**Signature**

```ts
declare class ValidDateFromSelf
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L6761)

Since v3.10.0