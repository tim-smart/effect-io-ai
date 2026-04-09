Package: `effect`<br />
Module: `Flag`<br />

## Flag.orElse

Provides an alternative flag if the first one fails to parse.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Try parsing as integer, fallback to string
const valueFlag = Flag.orElse(
  Flag.integer("value"),
  () => Flag.string("value")
)

// Multiple input sources with fallback
const configFlag = Flag.orElse(
  Flag.file("config"),
  () => Flag.string("config-url")
)
```

**Signature**

```ts
declare const orElse: { <B>(that: LazyArg<Flag<B>>): <A>(self: Flag<A>) => Flag<A | B>; <A, B>(self: Flag<A>, that: LazyArg<Flag<B>>): Flag<A | B>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L808)

Since v4.0.0