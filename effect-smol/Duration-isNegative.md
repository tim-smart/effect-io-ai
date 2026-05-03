Package: `effect`<br />
Module: `Duration`<br />

## Duration.isNegative

Returns `true` if the duration is negative (strictly less than zero).

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.isNegative(Duration.seconds(-5))) // true
console.log(Duration.isNegative(Duration.zero)) // false
console.log(Duration.isNegative(Duration.negativeInfinity)) // true
```

**Signature**

```ts
declare const isNegative: (self: Duration) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L400)

Since v4.0.0