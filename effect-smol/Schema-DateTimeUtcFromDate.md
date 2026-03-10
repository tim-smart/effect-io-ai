Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromDate

A transformation schema that decodes a `Date` into a `DateTime.Utc`.

Decoding:
- A **valid** `Date` is decoded as a `DateTime.Utc`

Encoding:
- A `DateTime.Utc` is encoded as a `Date`

**Signature**

```ts
declare const DateTimeUtcFromDate: DateTimeUtcFromDate
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7766)

Since v4.0.0