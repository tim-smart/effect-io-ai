Package: `effect`<br />
Module: `Duration`<br />

## Duration.toMinutes

Converts a Duration to minutes.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.toMinutes(Duration.seconds(120))) // 2
console.log(Duration.toMinutes(Duration.hours(1))) // 60
```

**Signature**

```ts
declare const toMinutes: (self: Duration) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L658)

Since v3.8.0