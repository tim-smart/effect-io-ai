Package: `effect`<br />
Module: `Flag`<br />

## Flag.withAlias

Adds an alias to a flag, allowing it to be referenced by multiple names.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Flag can be used as both --verbose and -v
const verboseFlag = Flag.boolean("verbose").pipe(
  Flag.withAlias("v")
)

// Multiple aliases can be chained
const helpFlag = Flag.boolean("help").pipe(
  Flag.withAlias("h"),
  Flag.withAlias("?")
)
```

**Signature**

```ts
declare const withAlias: { <A>(alias: string): (self: Flag<A>) => Flag<A>; <A>(self: Flag<A>, alias: string): Flag<A>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L384)

Since v4.0.0