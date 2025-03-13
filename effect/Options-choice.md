Package: `@effect/cli`<br />
Module: `Options`<br />

## Options.choice

Constructs command-line `Options` that represent a choice between several
inputs. The input will be mapped to it's associated value during parsing.

**Example**

```ts
import * as Options from "@effect/cli/Options"

export const animal: Options.Options<"dog" | "cat"> = Options.choice(
  "animal",
  ["dog", "cat"]
)
```

**Signature**

```ts
declare const choice: <A extends string, C extends ReadonlyArray<A>>(name: string, choices: C) => Options<C[number]>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Options.ts#L170)

Since v1.0.0