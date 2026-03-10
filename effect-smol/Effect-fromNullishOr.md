Package: `effect`<br />
Module: `Effect`<br />

## Effect.fromNullishOr

Converts a nullable value to an `Effect`, failing with a `NoSuchElementError`
when the value is `null` or `undefined`.

**Example**

```ts
import { Console, Effect } from "effect"

const program = Effect.fn(function*(input: string | null) {
  const value = yield* Effect.fromNullishOr(input)
  yield* Console.log(value)
},
  Effect.catch(() => Console.log("missing"))
)

Effect.runPromise(program(null))
// Output: missing
Effect.runPromise(program("hello"))
// Output: hello
```

**Signature**

```ts
declare const fromNullishOr: <A>(value: A) => Effect<NonNullable<A>, Cause.NoSuchElementError>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L1975)

Since v4.0.0