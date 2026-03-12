Package: `effect`<br />
Module: `Duration`<br />

## Duration.hours

Creates a Duration from hours.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.hours(2)
console.log(Duration.toMillis(duration)) // 7200000
```

**Signature**

```ts
declare const hours: (hours: number) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L621)

Since v2.0.0