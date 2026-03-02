Package: `effect`<br />
Module: `Duration`<br />

## Duration.Duration

Represents a span of time with high precision, supporting operations from
nanoseconds to weeks.

**Signature**

```ts
export interface Duration extends Equal.Equal, Pipeable, Inspectable.Inspectable {
  readonly [TypeId]: typeof TypeId
  readonly value: DurationValue
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L46)

Since v2.0.0