Package: `effect`<br />
Module: `Flag`<br />

## Flag.none

Creates an empty sentinel flag that always fails to parse.
This is useful for creating placeholder flags or for combinators.

**Example** (Creating sentinel flags)

```ts
import { Flag } from "effect/unstable/cli"

const makeValueFlag = (includeValue: boolean) =>
  includeValue ? Flag.string("value") : Flag.none

console.log(makeValueFlag(true) === Flag.none) // false
console.log(makeValueFlag(false) === Flag.none) // true
```

**Signature**

```ts
declare const none: Flag<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Flag.ts#L409)

Since v4.0.0