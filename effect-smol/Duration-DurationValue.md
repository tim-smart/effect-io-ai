Package: `effect`<br />
Module: `Duration`<br />

## Duration.DurationValue

Tagged representation of a `Duration` value.

**Details**

A duration is represented as milliseconds, nanoseconds, positive infinity,
or negative infinity.

**Signature**

```ts
type DurationValue = | { _tag: "Millis"; millis: number }
  | { _tag: "Nanos"; nanos: bigint }
  | { _tag: "Infinity" }
  | { _tag: "NegativeInfinity" }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L62)

Since v2.0.0