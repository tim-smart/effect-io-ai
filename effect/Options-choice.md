# choice

Constructs command-line `Options` that represent a choice between several
inputs. The input will be mapped to it's associated value during parsing.

To import and use `choice` from the "Options" module:

```ts
import * as Options from "@effect/cli/Options"
// Can be accessed like this
Options.choice
```

**Example**

```ts
import * as Options from "@effect/cli/Options"

export const animal: Options.Options<"dog" | "cat"> = Options.choice("animal", ["dog", "cat"])
```

**Signature**

```ts
export declare const choice: <A extends string, C extends readonly [A, ...A[]]>(
  name: string,
  choices: C
) => Options<C[number]>
```
