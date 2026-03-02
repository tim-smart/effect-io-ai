Package: `effect`<br />
Module: `String`<br />

## String.Concat

Concatenates two strings at the type level.

**Example**

```ts
import type { String } from "effect"

// Type-level concatenation
type Result = String.Concat<"hello", "world"> // "helloworld"
```

**Signature**

```ts
type `${A}${B}` = `${A}${B}`
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/String.ts#L107)

Since v2.0.0