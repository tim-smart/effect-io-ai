Package: `effect`<br />
Module: `Duration`<br />

## Duration.toDays

Converts a Duration to days.

**Example** (Converting durations to days)

```ts
import { Duration } from "effect"

console.log(Duration.toDays(Duration.hours(48))) // 2
console.log(Duration.toDays(Duration.weeks(1))) // 7
```

**Signature**

```ts
declare const toDays: (self: Input) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L880)

Since v3.8.0