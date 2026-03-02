Package: `effect`<br />
Module: `Duration`<br />

## Duration.clamp

Clamps a Duration between a minimum and maximum value.

**Example**

```ts
import { Duration } from "effect"

const clamped = Duration.clamp(Duration.seconds(10), {
  minimum: Duration.seconds(2),
  maximum: Duration.seconds(5)
})
console.log(Duration.toSeconds(clamped)) // 5
```

**Signature**

```ts
declare const clamp: { (options: { minimum: Duration; maximum: Duration; }): (self: Duration) => Duration; (self: Duration, options: { minimum: Duration; maximum: Duration; }): Duration; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1080)

Since v2.0.0