Package: `effect`<br />
Module: `Duration`<br />

## Duration.match

Pattern matches on a Duration, providing different handlers for millis and nanos.

**Example**

```ts
import { Duration } from "effect"

const result = Duration.match(Duration.seconds(5), {
  onMillis: (millis) => `${millis} milliseconds`,
  onNanos: (nanos) => `${nanos} nanoseconds`,
  onInfinity: () => "infinite"
})
console.log(result) // "5000 milliseconds"
```

**Signature**

```ts
declare const match: { <A, B, C, D = C>(options: { readonly onMillis: (millis: number) => A; readonly onNanos: (nanos: bigint) => B; readonly onInfinity: () => C; readonly onNegativeInfinity?: () => D; }): (self: Duration) => A | B | C | D; <A, B, C, D = C>(self: Duration, options: { readonly onMillis: (millis: number) => A; readonly onNanos: (nanos: bigint) => B; readonly onInfinity: () => C; readonly onNegativeInfinity?: () => D; }): A | B | C | D; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L848)

Since v2.0.0