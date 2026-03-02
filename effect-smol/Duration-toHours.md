Package: `effect`<br />
Module: `Duration`<br />

## Duration.toHours

Converts a Duration to hours.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.toHours(Duration.minutes(120))) // 2
console.log(Duration.toHours(Duration.days(1))) // 24
```

**Signature**

```ts
declare const toHours: (self: Duration) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L680)

Since v3.8.0