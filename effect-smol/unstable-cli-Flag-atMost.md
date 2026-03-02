Package: `effect`<br />
Module: `Flag`<br />

## Flag.atMost

Limits a flag to be specified at most a maximum number of times.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const warningFlag = Flag.atMost(Flag.string("warning"), 3)
// Allows up to 3 warning flags
// Usage: --warning w1 --warning w2 --warning w3

const debugFlag = Flag.string("debug").pipe(
  Flag.atMost(1)
)
// Allows at most 1 debug flag
```

**Signature**

```ts
declare const atMost: { <A>(max: number): (self: Flag<A>) => Flag<ReadonlyArray<A>>; <A>(self: Flag<A>, max: number): Flag<ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L683)

Since v4.0.0