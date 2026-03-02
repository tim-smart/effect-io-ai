Package: `effect`<br />
Module: `Duration`<br />

## Duration.toSeconds

Converts a Duration to seconds.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.toSeconds(Duration.millis(5000))) // 5
console.log(Duration.toSeconds(Duration.minutes(2))) // 120
```

**Signature**

```ts
declare const toSeconds: (self: Duration) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L636)

Since v2.0.0