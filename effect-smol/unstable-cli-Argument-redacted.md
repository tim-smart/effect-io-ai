Package: `effect`<br />
Module: `Argument`<br />

## Argument.redacted

Creates a positional redacted argument that obscures its value.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const secret = Argument.redacted("secret")
```

**Signature**

```ts
declare const redacted: (name: string) => Argument<Redacted.Redacted<string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L181)

Since v4.0.0