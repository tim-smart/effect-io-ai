Package: `effect`<br />
Module: `Effect`<br />

## Effect.effectify

Converts an error-first callback API into a function that returns an
`Effect`.

**Details**

The original function is called with the supplied arguments plus a final
callback. A non-null callback error fails the returned effect, while a
successful callback value becomes the effect success. Use `onError` to map
callback errors and `onSyncError` to turn synchronous throws into typed
failures; otherwise synchronous throws become defects.

**Example** (Converting callbacks to effects)

```ts
import { Effect } from "effect"
import * as fs from "fs"

// Convert Node.js readFile to an Effect
const readFile = Effect.effectify(fs.readFile)

// Use the effectified function
const program = readFile("package.json", "utf8")

Effect.runPromise(program).then(console.log)
// Output: contents of package.json
```

**Example** (Mapping callback errors to typed failures)

```ts
import { Effect } from "effect"
import * as fs from "fs"

const readFile = Effect.effectify(
  fs.readFile,
  (error, args) => new Error(`Failed to read file ${args[0]}: ${error.message}`)
)

const program = readFile("nonexistent.txt", "utf8")

Effect.runPromiseExit(program).then(console.log)
// Output: Exit.failure with custom error message
```

**Signature**

```ts
declare const effectify: { <F extends (...args: Array<any>) => any>(fn: F): Effectify.Effectify<F, Effectify.EffectifyError<F>>; <F extends (...args: Array<any>) => any, E>(fn: F, onError: (error: Effectify.EffectifyError<F>, args: Parameters<F>) => E): Effectify.Effectify<F, E>; <F extends (...args: Array<any>) => any, E, E2>(fn: F, onError: (error: Effectify.EffectifyError<F>, args: Parameters<F>) => E, onSyncError: (error: unknown, args: Parameters<F>) => E2): Effectify.Effectify<F, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L15081)

Since v4.0.0