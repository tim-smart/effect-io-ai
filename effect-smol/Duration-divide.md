Package: `effect`<br />
Module: `Duration`<br />

## Duration.divide

Divides a Duration by a number, returning `undefined` if division is invalid.

**Example**

```ts
import { Duration } from "effect"

const d = Duration.divide(Duration.seconds(10), 2)
console.log(d?.pipe(Duration.toSeconds)) // 5

Duration.divide(Duration.seconds(10), 0) // undefined
```

**Signature**

```ts
declare const divide: { (by: number): (self: Duration) => Duration | undefined; (self: Duration, by: number): Duration | undefined; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L1102)

Since v4.0.0