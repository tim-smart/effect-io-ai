Package: `effect`<br />
Module: `Schema`<br />

## Schema.DateTimeUtcFromMillis

A transformation schema that decodes a number into a `DateTime.Utc`.

Decoding:
- A number of milliseconds since the Unix epoch is decoded as a `DateTime.Utc`

Encoding:
- A `DateTime.Utc` is encoded as a number of milliseconds since the Unix epoch.

**Signature**

```ts
declare const DateTimeUtcFromMillis: DateTimeUtcFromMillis
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7811)

Since v4.0.0