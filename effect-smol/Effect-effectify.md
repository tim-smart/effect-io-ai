Package: `effect`<br />
Module: `Effect`<br />

## Effect.effectify

Converts a callback-based function to a function that returns an `Effect`.

**Example**

```ts
Basic Usage
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
```

**Example**

```ts
Custom Error Handling
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
```

**Signature**

```ts
declare const effectify: { <F extends (...args: Array<any>) => any>(fn: F): Effectify.Effectify<F, Effectify.EffectifyError<F>>; <F extends (...args: Array<any>) => any, E>(fn: F, onError: (error: Effectify.EffectifyError<F>, args: Parameters<F>) => E): Effectify.Effectify<F, E>; <F extends (...args: Array<any>) => any, E, E2>(fn: F, onError: (error: Effectify.EffectifyError<F>, args: Parameters<F>) => E, onSyncError: (error: unknown, args: Parameters<F>) => E2): Effectify.Effectify<F, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14317)

Since v4.0.0