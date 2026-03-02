Package: `effect`<br />
Module: `Argument`<br />

## Argument.float

Creates a positional float argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const ratio = Argument.float("ratio")
```

**Signature**

```ts
declare const float: (name: string) => Argument<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L115)

Since v4.0.0