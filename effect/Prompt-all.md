Package: `@effect/cli`<br />
Module: `Prompt`<br />

## Prompt.all

Runs all the provided prompts in sequence respecting the structure provided
in input.

Supports either a tuple / iterable of prompts or a record / struct of prompts
as an argument.

**Example**

```ts
import * as Prompt from "@effect/cli/Prompt"
import * as Effect from "effect/Effect"

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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cli/src/Prompt.ts#L549)

Since v1.0.0