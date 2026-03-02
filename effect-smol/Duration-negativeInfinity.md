Package: `effect`<br />
Module: `Duration`<br />

## Duration.negativeInfinity

A Duration representing negative infinite time.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.toMillis(Duration.negativeInfinity)) // -Infinity
```

**Signature**

```ts
declare const negativeInfinity: Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L470)

Since v4.0.0