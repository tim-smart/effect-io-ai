Package: `effect`<br />
Module: `DateTime`<br />

## DateTime.DateTime.Input

Input accepted by `DateTime.make`, `DateTime.makeUnsafe`, and the zoned
constructors.

Includes existing `DateTime` values, partial date parts, epoch-millisecond
objects, epoch milliseconds, JavaScript `Date` instances, and parseable date
strings.

**Signature**

```ts
type Input = DateTime | Partial<Parts> | Instant | InstantWithZone | Date | number | string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/DateTime.ts#L131)

Since v3.6.0