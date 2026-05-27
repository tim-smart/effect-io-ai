Package: `effect`<br />
Module: `Duration`<br />

## Duration.DurationValue

Tagged representation of a `Duration` value.

**When to use**

Use when modeling or inspecting the exact tagged representation stored in a
`Duration`, including finite millisecond or nanosecond values and infinite
sentinels.

**Details**

A duration is represented as milliseconds, nanoseconds, positive infinity,
or negative infinity.

**See**

- `Duration` for the public type whose `value` field contains this
representation
- `match` for pattern matching without reading `value` directly

**Signature**

```ts
type DurationValue = | { _tag: "Millis"; millis: number }
  | { _tag: "Nanos"; nanos: bigint }
  | { _tag: "Infinity" }
  | { _tag: "NegativeInfinity" }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L118)

Since v2.0.0