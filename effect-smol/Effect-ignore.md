Package: `effect`<br />
Module: `Effect`<br />

## Effect.ignore

Discards both the success and failure values of an effect.

**When to Use**

`ignore` allows you to run an effect without caring about its result, whether
it succeeds or fails. This is useful when you only care about the side
effects of the effect and do not need to handle or process its outcome.

Use the `log` option to emit the full `Cause` when the effect fails,
and `message` to prepend a custom log message.

**Example**

```ts
// Title: Using Effect.ignore to Discard Values
import { Effect } from "effect"

//      ┌─── Effect<number, string, never>
//      ▼
const task = Effect.fail("Uh oh!").pipe(Effect.as(5))

//      ┌─── Effect<void, never, never>
//      ▼
const program = task.pipe(Effect.ignore)
```

**Example**

```ts
// Title: Logging failures while ignoring results
import { Effect } from "effect"

const task = Effect.fail("Uh oh!")

const program = task.pipe(Effect.ignore({ log: true }))
const programWarn = task.pipe(Effect.ignore({ log: "Warn", message: "Ignoring task failure" }))
```

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Effect.ignoreLogged`

**Signature**

```ts
declare const ignore: <Arg extends Effect<any, any, any> | { readonly log?: boolean | Severity | undefined; readonly message?: string | undefined; } | undefined = { readonly log?: boolean | Severity | undefined; readonly message?: string | undefined; }>(effectOrOptions?: Arg, options?: { readonly log?: boolean | Severity | undefined; readonly message?: string | undefined; } | undefined) => [Arg] extends [Effect<infer _A, infer _E, infer _R>] ? Effect<void, never, _R> : <A, E, R>(self: Effect<A, E, R>) => Effect<void, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4178)

Since v2.0.0