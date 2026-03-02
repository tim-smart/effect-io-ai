Package: `effect`<br />
Module: `Result`<br />

## Result.Failure

The failure variant of `Result`. Wraps an error of type `E`.

- Access the error via the `.failure` property
- Use `isFailure` to narrow a `Result` to `Failure`
- Create with `fail`

**Example** (Accessing the failure value)

```ts
import { Result } from "effect"

const failure = Result.fail("Network error")

if (Result.isFailure(failure)) {
  console.log(failure.failure)
  // Output: "Network error"
}
```

**See**

- `fail` to create a Failure
- `isFailure` to narrow the type
- `Success` for the other variant

**Signature**

```ts
export interface Failure<out A, out E> extends Pipeable, Inspectable, Yieldable<Result<A, E>, A, E> {
  readonly _tag: "Failure"
  readonly _op: "Failure"
  readonly failure: E
  readonly [TypeId]: {
    readonly _A: Covariant<E>
    readonly _E: Covariant<A>
  }
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: ResultUnify<this>
  [Unify.ignoreSymbol]?: ResultUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L157)

Since v4.0.0