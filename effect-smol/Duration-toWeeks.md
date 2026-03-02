Package: `effect`<br />
Module: `Duration`<br />

## Duration.toWeeks

Converts a Duration to weeks.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.toWeeks(Duration.days(14))) // 2
console.log(Duration.toWeeks(Duration.days(7))) // 1
```

**Signature**

```ts
declare const toWeeks: (self: Duration) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L724)

Since v3.8.0