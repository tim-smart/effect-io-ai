Package: `effect`<br />
Module: `Duration`<br />

## Duration.infinity

A Duration representing infinite time.

**Example** (Using infinite duration)

```ts
import { Duration } from "effect"

console.log(Duration.toMillis(Duration.infinity)) // Infinity
```

**Signature**

```ts
declare const infinity: Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L619)

Since v2.0.0