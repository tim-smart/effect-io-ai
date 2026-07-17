Package: `effect`<br />
Module: `Duration`<br />

## Duration.Duration

Represents a span of time with high precision, supporting operations from
nanoseconds to weeks.

**When to use**

Use to model elapsed time, delays, timeouts, schedule intervals, and cache
TTLs as immutable duration values.

**See**

- `Input` for values accepted by APIs that decode duration-like
inputs
- `DurationValue` for the tagged representation exposed by the
`value` field

**Signature**

```ts
export interface Duration extends Equal.Equal, Pipeable, Inspectable.Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly value: DurationValue
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Duration.ts#L70)

Since v2.0.0