Package: `effect`<br />
Module: `Duration`<br />

## Duration.minutes

Creates a Duration from minutes.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.minutes(5)
console.log(Duration.toMillis(duration)) // 300000
```

**Signature**

```ts
declare const minutes: (minutes: number) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L617)

Since v2.0.0