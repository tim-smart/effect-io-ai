Package: `effect`<br />
Module: `Duration`<br />

## Duration.between

Checks if a `Duration` is between a `minimum` and `maximum` value.

**Example**

```ts
import { Duration } from "effect"

const isInRange = Duration.between(Duration.seconds(3), {
  minimum: Duration.seconds(2),
  maximum: Duration.seconds(5)
})
console.log(isInRange) // true
```

**Signature**

```ts
declare const between: { (options: { minimum: Duration; maximum: Duration; }): (self: Duration) => boolean; (self: Duration, options: { minimum: Duration; maximum: Duration; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1054)

Since v2.0.0