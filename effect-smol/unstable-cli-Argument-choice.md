Package: `effect`<br />
Module: `Argument`<br />

## Argument.choice

Creates a positional choice argument.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const environment = Argument.choice("environment", ["dev", "staging", "prod"])
```

**Signature**

```ts
declare const choice: <const Choices extends ReadonlyArray<string>>(name: string, choices: Choices) => Argument<Choices[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L144)

Since v4.0.0