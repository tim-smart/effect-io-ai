Package: `effect`<br />
Module: `Duration`<br />

## Duration.zero

A Duration representing zero time.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.toMillis(Duration.zero)) // 0
```

**Signature**

```ts
declare const zero: Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L507)

Since v2.0.0