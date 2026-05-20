Package: `effect`<br />
Module: `Schema`<br />

## Schema.DurationFromNanos

Type-level representation of a transformation schema that decodes non-negative
nanosecond `bigint` values into `Duration` values.

**Signature**

```ts
export interface DurationFromNanos extends decodeTo<Duration, BigInt> {
  readonly "Rebuild": DurationFromNanos
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L9693)

Since v3.10.0