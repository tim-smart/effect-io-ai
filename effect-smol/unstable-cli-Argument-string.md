Package: `effect`<br />
Module: `Argument`<br />

## Argument.string

Creates a positional string argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const filename = Argument.string("filename")
```

**Signature**

```ts
declare const string: (name: string) => Argument<string>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L50)

Since v4.0.0