Package: `effect`<br />
Module: `Argument`<br />

## Argument.choiceWithValue

Creates a positional choice argument with custom value mapping.

**Example**

```ts
import { Argument } from "effect/unstable/cli"

const logLevel = Argument.choiceWithValue("level", [
  ["debug", 0],
  ["info", 1],
  ["warn", 2],
  ["error", 3]
])
```

**Signature**

```ts
declare const choiceWithValue: <const Choices extends ReadonlyArray<readonly [string, any]>>(name: string, choices: Choices) => Argument<Choices[number][1]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Argument.ts#L572)

Since v4.0.0