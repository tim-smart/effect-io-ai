Package: `effect`<br />
Module: `Flag`<br />

## Flag.atLeast

Requires a flag to be specified at least a minimum number of times.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

const sourceFlag = Flag.atLeast(Flag.file("source"), 2)
// Requires at least 2 source files
// Usage: --source file1.ts --source file2.ts

const tagFlag = Flag.string("tag").pipe(
  Flag.atLeast(1)
)
// Requires at least 1 tag
```

**Signature**

```ts
declare const atLeast: { <A>(min: number): (self: Flag<A>) => Flag<ReadonlyArray<A>>; <A>(self: Flag<A>, min: number): Flag<ReadonlyArray<A>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L657)

Since v4.0.0