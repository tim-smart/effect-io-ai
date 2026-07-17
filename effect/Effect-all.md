Package: `effect`<br />
Module: `Effect`<br />

## Effect.all

Combines an iterable or record of effects into one effect whose success shape
follows the input.

**When to use**

Use to run a known collection of effects and collect results in the same
tuple, iterable, or record shape.

**Details**

Tuple and iterable inputs collect results in order. Record inputs collect
results under the same keys. By default, the combined effect fails on the
first failure; with concurrent execution, effects that have already started
may be interrupted, while effects not yet started are skipped.

Options:

Use `concurrency` to control sequential or concurrent execution. Use
`mode: "result"` to run every effect and collect each success or failure as a
`Result` in the same output shape. Use `discard: true` to ignore successful
values and return `void`.

**Example** (Collecting tuple results in order)

```ts
import { Console, Effect } from "effect"

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

**Example** (Collecting iterable results in order)

```ts
import { Console, Effect } from "effect"

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

**Example** (Collecting struct results by key)

```ts
import { Console, Effect } from "effect"

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

**Example** (Collecting record results by key)

```ts
import { Console, Effect } from "effect"

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

**Example** (Stopping on the first failure)

```ts
import { Console, Effect } from "effect"

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

**See**

- `forEach` for iterating over elements and applying an effect.

**Signature**

```ts
declare const all: <const Arg extends Iterable<Effect<any, any, any>> | Record<string, Effect<any, any, any>>, O extends { readonly concurrency?: Concurrency | undefined; readonly discard?: boolean | undefined; readonly mode?: "default" | "result" | undefined; }>(arg: Arg, options?: O) => All.Return<Arg, O>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L514)

Since v2.0.0