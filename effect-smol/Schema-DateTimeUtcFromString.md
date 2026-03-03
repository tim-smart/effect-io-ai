Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromString

A transformation schema that decodes a string into a `DateTime.Utc`.

Decoding:
- A `string` that can be parsed by `Date.parse` is decoded as a
  `DateTime.Utc`

Encoding:
- A `DateTime.Utc` is encoded as a `string` in ISO 8601 format, ignoring any
  time zone.

**Signature**

```ts
declare const DateTimeUtcFromString: DateTimeUtcFromString
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7785)

Since v4.0.0