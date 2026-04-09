Package: `effect`<br />
Module: `Flag`<br />

## Flag.none

Creates an empty sentinel flag that always fails to parse.
This is useful for creating placeholder flags or for combinators.

**Example**

```ts
import { Flag } from "effect/unstable/cli"

// Used as a placeholder in flag combinators
const conditionalFlag = true ? Flag.string("value") : Flag.none
```

**Signature**

```ts
declare const none: Flag<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Flag.ts#L355)

Since v4.0.0