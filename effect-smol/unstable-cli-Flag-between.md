Package: `effect`<br />
Module: `Flag`<br />

## Flag.between

Constrains a flag to be specified between a minimum and maximum number of times.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const hostFlag = Flag.between(Flag.string("host"), 1, 3)
// Requires 1-3 host flags
// Usage: --host host1 --host host2

const excludeFlag = Flag.string("exclude").pipe(
  Flag.between(0, 5)
)
// Allows 0-5 exclude patterns
```

**Signature**

```ts
declare const between: { <A>(min: number, max: number): (self: Flag<A>) => Flag<ReadonlyArray<A>>; <A>(self: Flag<A>, min: number, max: number): Flag<ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L708)

Since v4.0.0