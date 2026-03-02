Package: `effect`<br />
Module: `Prompt`<br />

## Prompt.autoComplete

Creates a prompt that lets users filter select choices by typing.

**Example**

```ts
import { Prompt } from "effect/unstable/cli"

const language = Prompt.autoComplete({
  message: "Choose a language",
  choices: [
    { title: "TypeScript", value: "ts" },
    { title: "Rust", value: "rs" },
    { title: "Kotlin", value: "kt" }
  ]
})
```

**Signature**

```ts
declare const autoComplete: <const A>(options: AutoCompleteOptions<A>) => Prompt<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Prompt.ts#L960)

Since v4.0.0