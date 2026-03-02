Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromNullishOr

Converts a nullable value to an `Effect`, failing with a `NoSuchElementError`
when the value is `null` or `undefined`.

**Example**

```ts
import { Console, Effect } from "effect"

const input: string | null = null

const program = Effect.gen(function*() {
  const value = yield* Effect.fromNullishOr(input)
  yield* Console.log(value)
}).pipe(
  Effect.catch(() => Console.log("missing"))
)

Effect.runPromise(program)
// Output: missing
```

**Signature**

```ts
declare const fromNullishOr: <A>(value: A) => Effect<NonNullable<A>, Cause.NoSuchElementError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1954)

Since v4.0.0