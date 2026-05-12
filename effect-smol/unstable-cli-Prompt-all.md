Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.all

Runs all the provided prompts in sequence respecting the structure provided
in input.

Supports either a tuple / iterable of prompts or a record / struct of prompts
as an argument.

**Example**

```ts
import { Effect } from "effect"
import { Prompt } from "effect/unstable/cli"

const username = Prompt.text({
  message: "Enter your username: "
})

const password = Prompt.password({
  message: "Enter your password: ",
  validate: (value) =>
    value.length === 0
      ? Effect.fail("Password cannot be empty")
      : Effect.succeed(value)
})

const allWithTuple = Prompt.all([username, password])

const allWithRecord = Prompt.all({ username, password })
```

**Signature**

```ts
declare const all: <const Arg extends Iterable<Prompt<any>> | Record<string, Prompt<any>>>(arg: Arg) => All.Return<Arg>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L587)

Since v4.0.0