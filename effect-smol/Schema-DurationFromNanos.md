Package: `effect`<br />
Module: `Schema`<br />

## Schema.DurationFromNanos

A transformation schema that decodes a non-negative `bigint` into a
`Duration`, treating the `bigint` value as the duration in nanoseconds.

Decoding:
- A non-negative `bigint` representing nanoseconds is decoded as a `Duration`

Encoding:
- A `Duration` is encoded to a non-negative `bigint` representing nanoseconds

**Signature**

```ts
declare const DurationFromNanos: DurationFromNanos
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L6890)

Since v4.0.0