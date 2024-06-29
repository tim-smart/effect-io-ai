# all

Runs all the provided prompts in sequence respecting the structure provided
in input.

Supports multiple arguments, a single argument tuple / array or record /
struct.

To import and use `all` from the "Prompt" module:

```ts
import * as Prompt from "@effect/cli/Prompt"
// Can be accessed like this
Prompt.all
```

**Signature**

```ts
export declare const all: <const Arg extends Iterable<Prompt<any>>>(arg: Arg) => All.Return<Arg>
```
