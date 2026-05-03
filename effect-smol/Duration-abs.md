Package: `effect`<br />
Module: `Duration`<br />

## Duration.abs

Returns the absolute value of the duration.

**Example**

```ts
import { Duration } from "effect"

Duration.toMillis(Duration.abs(Duration.seconds(-5))) // 5000
Duration.abs(Duration.negativeInfinity) === Duration.infinity // true
```

**Signature**

```ts
declare const abs: (self: Duration) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L455)

Since v4.0.0