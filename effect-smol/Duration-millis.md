Package: `effect`<br />
Module: `Duration`<br />

## Duration.millis

Creates a Duration from milliseconds.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.millis(1000)
console.log(Duration.toMillis(duration)) // 1000
```

**Signature**

```ts
declare const millis: (millis: number) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L573)

Since v2.0.0