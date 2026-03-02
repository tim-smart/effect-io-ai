Package: `effect`<br />
Module: `Duration`<br />

## Duration.weeks

Creates a Duration from weeks.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.weeks(1)
console.log(Duration.toMillis(duration)) // 604800000
```

**Signature**

```ts
declare const weeks: (weeks: number) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L598)

Since v2.0.0