Package: `effect`<br />
Module: `Effect`<br />

## Effect.ignoreCause

Ignores the effect's failure cause, including defects and interruptions.

Use the `log` option to emit the full `Cause` when the effect fails,
and `message` to prepend a custom log message.

**Example**

```ts
import { Effect } from "effect"

const task = Effect.fail("boom")

const program = task.pipe(Effect.ignoreCause)
const programLog = task.pipe(Effect.ignoreCause({ log: true, message: "Ignoring failure cause" }))
```

**Signature**

```ts
declare const ignoreCause: <Arg extends Effect<any, any, any> | { readonly log?: boolean | Severity | undefined; readonly message?: string | undefined; } | undefined = { readonly log?: boolean | Severity | undefined; readonly message?: string | undefined; }>(effectOrOptions?: Arg, options?: { readonly log?: boolean | Severity | undefined; readonly message?: string | undefined; } | undefined) => [Arg] extends [Effect<infer _A, infer _E, infer _R>] ? Effect<void, never, _R> : <A, E, R>(self: Effect<A, E, R>) => Effect<void, never, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L4215)

Since v4.0.0