Package: `effect`<br />
Module: `Duration`<br />

## Duration.isFinite

Checks whether a Duration is finite (not infinite).

**Example** (Checking finite durations)

```ts
import { Duration } from "effect"

console.log(Duration.isFinite(Duration.seconds(5))) // true
console.log(Duration.isFinite(Duration.infinity)) // false
```

**Signature**

```ts
declare const isFinite: (self: Duration) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L430)

Since v2.0.0