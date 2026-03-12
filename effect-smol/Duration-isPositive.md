Package: `effect`<br />
Module: `Duration`<br />

## Duration.isPositive

Returns `true` if the duration is positive (strictly greater than zero).

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.isPositive(Duration.seconds(5))) // true
console.log(Duration.isPositive(Duration.zero)) // false
console.log(Duration.isPositive(Duration.infinity)) // true
```

**Signature**

```ts
declare const isPositive: (self: Duration) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L416)

Since v4.0.0