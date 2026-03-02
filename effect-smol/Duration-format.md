Package: `effect`<br />
Module: `Duration`<br />

## Duration.format

Converts a `Duration` to a human readable string.

**Example**

```ts
import { Duration } from "effect"

Duration.format(Duration.millis(1000)) // "1s"
Duration.format(Duration.millis(1001)) // "1s 1ms"
```

**Signature**

```ts
declare const format: (self: Duration) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1490)

Since v2.0.0