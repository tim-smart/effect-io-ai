Package: `effect`<br />
Module: `Duration`<br />

## Duration.negate

Negates the duration.

**Example**

```ts
import { Duration } from "effect"

Duration.toMillis(Duration.negate(Duration.seconds(5))) // -5000
Duration.negate(Duration.infinity) === Duration.negativeInfinity // true
```

**Signature**

```ts
declare const negate: (self: Duration) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L481)

Since v4.0.0