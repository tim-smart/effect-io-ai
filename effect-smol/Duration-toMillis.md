Package: `effect`<br />
Module: `Duration`<br />

## Duration.toMillis

Converts a Duration to milliseconds.

**Example**

```ts
import { Duration } from "effect"

console.log(Duration.toMillis(Duration.seconds(5))) // 5000
console.log(Duration.toMillis(Duration.minutes(2))) // 120000
```

**Signature**

```ts
declare const toMillis: (self: Input) => number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L681)

Since v2.0.0