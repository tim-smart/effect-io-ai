Package: `effect`<br />
Module: `Duration`<br />

## Duration.seconds

Creates a Duration from seconds.

**Example**

```ts
import { Duration } from "effect"

const duration = Duration.seconds(30)
console.log(Duration.toMillis(duration)) // 30000
```

**Signature**

```ts
declare const seconds: (seconds: number) => Duration
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Duration.ts#L589)

Since v2.0.0