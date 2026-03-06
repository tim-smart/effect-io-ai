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
and collect every success / failure as `Result` values.

**The `mode` option**

The `{ mode: "result" }` option changes the behavior of `Effect.all` to
ensure all effects run, even if some fail. Instead of stopping on the first
failure, this mode collects both successes and failures, returning an array
of `Result` instances where each result is either an `Ok` (success) or a
`Err` (failure).

**Example**

```ts
Combining Effects in Tuples
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
```

**Example**

```ts
Combining Effects in Iterables
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
```

**Example**

```ts
Combining Effects in Structs
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
```

**Example**

```ts
Combining Effects in Records
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
```

**Example**

```ts
Short-Circuiting Behavior
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
```

**See**

- `forEach` for iterating over elements and applying an effect.

**Signature**

```ts
declare const all: <const Arg extends Iterable<Effect<any, any, any>> | Record<string, Effect<any, any, any>>, O extends { readonly concurrency?: Concurrency | undefined; readonly discard?: boolean | undefined; readonly mode?: "default" | "result" | undefined; }>(arg: Arg, options?: O) => All.Return<Arg, O>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L756)

Since v2.0.0