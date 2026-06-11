Package: `effect`<br />
Module: `Cause`<br />

## Cause.done

Creates an Effect that fails with a `Done` error. Shorthand for
`Effect.fail(Cause.Done(value))`.

**When to use**

Use when you model stream or queue completion through the error channel.

**Example** (failing with Done)

```ts
import { Cause, Effect } from "effect"

const program = Cause.done("finished")

Effect.runPromiseExit(program).then((exit) => {
  console.log(exit._tag) // "Failure"
})
```

**See**

- `Done` — create the signal value without an Effect

**Signature**

```ts
declare const done: <A = void>(value?: A) => Effect.Effect<never, Done<A>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1403)

Since v4.0.0