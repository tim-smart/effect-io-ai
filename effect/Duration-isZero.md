Package: `effect`<br />
Module: `Duration`<br />

## Duration.isZero

Checks whether a Duration is zero.

**Example** (Checking for zero durations)

```ts
import { Duration } from "effect"

console.log(Duration.isZero(Duration.zero)) // true
console.log(Duration.isZero(Duration.seconds(1))) // false
```

**Signature**

```ts
declare const isZero: (self: Duration) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Duration.ts#L448)

Since v3.5.0