Package: `effect`<br />
Module: `Duration`<br />

## Duration.isDuration

Checks whether a value is a Duration.

**Example** (Checking for durations)

```ts
import { Duration } from "effect"

console.log(Duration.isDuration(Duration.seconds(1))) // true
console.log(Duration.isDuration(1000)) // false
```

**Signature**

```ts
declare const isDuration: (u: unknown) => u is Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L434)

Since v2.0.0