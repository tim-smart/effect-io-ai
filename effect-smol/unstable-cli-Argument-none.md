Package: `effect`<br />
Module: `Argument`<br />

## Argument.none

Creates an empty sentinel argument that always fails to parse.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

// Used as a placeholder or default in combinators
const noArg = Argument.none
```

**Signature**

```ts
declare const none: Argument<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L255)

Since v4.0.0