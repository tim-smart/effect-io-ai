Package: `effect`<br />
Module: `Argument`<br />

## Argument.integer

Creates a positional integer argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const count = Argument.integer("count")
```

**Signature**

```ts
declare const integer: (name: string) => Argument<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L65)

Since v4.0.0