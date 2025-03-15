Package: `effect`<br />
Module: `Effect`<br />

## Effect.all

Combines multiple effects into one, returning results based on the input
structure.

**Details**

Use this function when you need to run multiple effects and combine their
results into a single output. It supports tuples, iterables, structs, and
records, making it flexible for different input types.

For instance, if the input is a tuple:

```ts
//         ┌─── a tuple of effects
//         ▼
Effect.all([effect1, effect2, ...])
```

the effects are executed sequentially, and the result is a new effect
containing the results as a tuple. The results in the tuple match the order
of the effects passed to `Effect.all`.

**Concurrency**

You can control the execution order (e.g., sequential vs. concurrent) using
the `concurrency` option.

**Short-Circuiting Behavior**

This function stops execution on the first error it encounters, this is
called "short-circuiting". If any effect in the collection fails, the
remaining effects will not run, and the error will be propagated. To change
this behavior, you can use the `mode` option, which allows all effects to run
and collect results as `Either` or `Option`.

**The `mode` option**

The `{ mode: "either" }` option changes the behavior of `Effect.all` to
ensure all effects run, even if some fail. Instead of stopping on the first
failure, this mode collects both successes and failures, returning an array
of `Either` instances where each result is either a `Right` (success) or a
`Left` (failure).

Similarly, the `{ mode: "validate" }` option uses `Option` to indicate
success or failure. Each effect returns `None` for success and `Some` with
the error for failure.

**Example** (Combining Effects in Tuples)

```ts
import { Effect, Console } from "effect"

const tupleOfEffects = [
  Effect.succeed(42).pipe(Effect.tap(Console.log)),
  Effect.succeed("Hello").pipe(Effect.tap(Console.log))
] as const

//      ┌─── Effect<[number, string], never, never>
//      ▼
const resultsAsTuple = Effect.all(tupleOfEffects)

Effect.runPromise(resultsAsTuple).then(console.log)
// Output:
// 42
// Hello
// [ 42, 'Hello' ]
```

**Example** (Combining Effects in Iterables)

```ts
import { Effect, Console } from "effect"

const iterableOfEffects: Iterable<Effect.Effect<number>> = [1, 2, 3].map(
  (n) => Effect.succeed(n).pipe(Effect.tap(Console.log))
)

//      ┌─── Effect<number[], never, never>
//      ▼
const resultsAsArray = Effect.all(iterableOfEffects)

Effect.runPromise(resultsAsArray).then(console.log)
// Output:
// 1
// 2
// 3
// [ 1, 2, 3 ]
```

**Example** (Combining Effects in Structs)

```ts
import { Effect, Console } from "effect"

const structOfEffects = {
  a: Effect.succeed(42).pipe(Effect.tap(Console.log)),
  b: Effect.succeed("Hello").pipe(Effect.tap(Console.log))
}

//      ┌─── Effect<{ a: number; b: string; }, never, never>
//      ▼
const resultsAsStruct = Effect.all(structOfEffects)

Effect.runPromise(resultsAsStruct).then(console.log)
// Output:
// 42
// Hello
// { a: 42, b: 'Hello' }
```

**Example** (Combining Effects in Records)

```ts
import { Effect, Console } from "effect"

const recordOfEffects: Record<string, Effect.Effect<number>> = {
  key1: Effect.succeed(1).pipe(Effect.tap(Console.log)),
  key2: Effect.succeed(2).pipe(Effect.tap(Console.log))
}

//      ┌─── Effect<{ [x: string]: number; }, never, never>
//      ▼
const resultsAsRecord = Effect.all(recordOfEffects)

Effect.runPromise(resultsAsRecord).then(console.log)
// Output:
// 1
// 2
// { key1: 1, key2: 2 }
```

**Example** (Short-Circuiting Behavior)

```ts
import { Effect, Console } from "effect"

const program = Effect.all([
  Effect.succeed("Task1").pipe(Effect.tap(Console.log)),
  Effect.fail("Task2: Oh no!").pipe(Effect.tap(Console.log)),
  // Won't execute due to earlier failure
  Effect.succeed("Task3").pipe(Effect.tap(Console.log))
])

Effect.runPromiseExit(program).then(console.log)
// Output:
// Task1
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: { _id: 'Cause', _tag: 'Fail', failure: 'Task2: Oh no!' }
// }
```

**Example** (Collecting Results with `mode: "either"`)

```ts
import { Effect, Console } from "effect"

const effects = [
  Effect.succeed("Task1").pipe(Effect.tap(Console.log)),
  Effect.fail("Task2: Oh no!").pipe(Effect.tap(Console.log)),
  Effect.succeed("Task3").pipe(Effect.tap(Console.log))
]

const program = Effect.all(effects, { mode: "either" })

Effect.runPromiseExit(program).then(console.log)
// Output:
// Task1
// Task3
// {
//   _id: 'Exit',
//   _tag: 'Success',
//   value: [
//     { _id: 'Either', _tag: 'Right', right: 'Task1' },
//     { _id: 'Either', _tag: 'Left', left: 'Task2: Oh no!' },
//     { _id: 'Either', _tag: 'Right', right: 'Task3' }
//   ]
// }
```

**Example** (Collecting Results with `mode: "validate"`)

```ts
import { Effect, Console } from "effect"

const effects = [
  Effect.succeed("Task1").pipe(Effect.tap(Console.log)),
  Effect.fail("Task2: Oh no!").pipe(Effect.tap(Console.log)),
  Effect.succeed("Task3").pipe(Effect.tap(Console.log))
]

const program = Effect.all(effects, { mode: "validate" })

Effect.runPromiseExit(program).then((result) => console.log("%o", result))
// Output:
// Task1
// Task3
// {
//   _id: 'Exit',
//   _tag: 'Failure',
//   cause: {
//     _id: 'Cause',
//     _tag: 'Fail',
//     failure: [
//       { _id: 'Option', _tag: 'None' },
//       { _id: 'Option', _tag: 'Some', value: 'Task2: Oh no!' },
//       { _id: 'Option', _tag: 'None' }
//     ]
//   }
// }
```

**See**

- `forEach` for iterating over elements and applying an effect.
- `allWith` for a data-last version of this function.

**Signature**

```ts
declare const all: <const Arg extends Iterable<Effect<any, any, any>> | Record<string, Effect<any, any, any>>, O extends NoExcessProperties<{ readonly concurrency?: Concurrency | undefined; readonly batching?: boolean | "inherit" | undefined; readonly discard?: boolean | undefined; readonly mode?: "default" | "validate" | "either" | undefined; readonly concurrentFinalizers?: boolean | undefined; }, O>>(arg: Arg, options?: O) => All.Return<Arg, O>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L806)

Since v2.0.0