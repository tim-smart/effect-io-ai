Package: `effect`<br />
Module: `Duration`<br />

## Duration.DurationValue

The internal representation of a `Duration` value.

**Signature**

```ts
type DurationValue = | { _tag: "Millis"; millis: number }
  | { _tag: "Nanos"; nanos: bigint }
  | { _tag: "Infinity" }
  | { _tag: "NegativeInfinity" }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L57)

Since v2.0.0