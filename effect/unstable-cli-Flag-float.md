Package: `effect`<br />
Module: `Flag`<br />

## Flag.float

Creates a float flag that accepts decimal number input.

**Example** (Creating float flags)

```ts
import { Flag } from "effect/unstable/cli"

const rateFlag = Flag.float("rate")
// Usage: --rate 3.14
```

**Signature**

```ts
declare const float: (name: string) => Flag<number>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Flag.ts#L107)

Since v4.0.0