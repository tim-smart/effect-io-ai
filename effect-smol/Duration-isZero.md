Package: `effect`<br />
Module: `Duration`<br />

## Duration.isZero

Checks if a Duration is zero.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.isZero(Duration.zero)) // true
console.log(Duration.isZero(Duration.seconds(1))) // false
```

**Signature**

```ts
declare const isZero: (self: Duration) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L373)

Since v3.5.0