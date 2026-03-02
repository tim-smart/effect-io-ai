Package: `effect`<br />
Module: `Duration`<br />

## Duration.days

Creates a Duration from days.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.days(1)
console.log(Duration.toMillis(duration)) // 86400000
```

**Signature**

```ts
declare const days: (days: number) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L582)

Since v2.0.0