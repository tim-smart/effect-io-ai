# all

Runs all the provided prompts in sequence respecting the structure provided
in input.

Supports either a tuple / iterable of prompts or a record / struct of prompts
as an argument.

To import and use `all` from the "Prompt" module:

ts
import \* as Prompt from "@effect/cli/Prompt"
// Can be accessed like this
Prompt.all
undefined

**Example**

```ts
import * as Prompt from "@effect/cli/Prompt"
import * as NodeContext from "@effect/platform-node/NodeContext"
import * as Runtime from "@effect/platform-node/NodeRuntime"
import * as Effect from "effect/Effect"

const username = Prompt.text({
  message: "Enter your username: "
})

const password = Prompt.password({
  message: "Enter your password: ",
  validate: (value) => (value.length === 0 ? Effect.fail("Password cannot be empty") : Effect.succeed(value))
})

const allWithTuple = Prompt.all([username, password])

const allWithRecord = Prompt.all({ username, password })
```

**Signature**

```ts
export declare const all: <const Arg extends Iterable<Prompt<any>> | Record<string, Prompt<any>>>(
  arg: Arg
) => All.Return<Arg>
```
