Package: `effect`<br />
Module: `Duration`<br />

## Duration.matchPair

Pattern matches on two `Duration`s, providing handlers that receive both values.

**Example**

```ts
import { Duration } from "effect"

const sum = Duration.matchPair(Duration.seconds(3), Duration.seconds(2), {
  onMillis: (a, b) => a + b,
  onNanos: (a, b) => Number(a + b),
  onInfinity: () => Infinity
})
console.log(sum) // 5000
```

**Signature**

```ts
declare const matchPair: { <A, B, C>(that: Duration, options: { readonly onMillis: (self: number, that: number) => A; readonly onNanos: (self: bigint, that: bigint) => B; readonly onInfinity: (self: Duration, that: Duration) => C; }): (self: Duration) => A | B | C; <A, B, C>(self: Duration, that: Duration, options: { readonly onMillis: (self: number, that: number) => A; readonly onNanos: (self: bigint, that: bigint) => B; readonly onInfinity: (self: Duration, that: Duration) => C; }): A | B | C; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L975)

Since v2.0.0