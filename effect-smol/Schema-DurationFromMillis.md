Package: `effect`<br />
Module: `Schema`<br />

## Schema.DurationFromMillis

A transformation schema that decodes a non-negative (possibly infinite)
integer into a `Duration`, treating the integer value as the duration in
milliseconds.

Decoding:
- A non-negative (possibly infinite) integer representing milliseconds is
  decoded as a `Duration`

Encoding:
- A `Duration` is encoded to a non-negative (possibly infinite) integer
  representing milliseconds

**Signature**

```ts
declare const DurationFromMillis: DurationFromMillis
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L7001)

Since v4.0.0