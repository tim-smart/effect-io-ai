Package: `effect`<br />
Module: `Result`<br />

## Result.Success

The success variant of `Result`. Wraps a value of type `A`.

- Access the value via the `.success` property
- Use `isSuccess` to narrow a `Result` to `Success`
- Create with `succeed`

**Example** (Accessing the success value)

```ts
import { Result } from "effect"

const success = Result.succeed(42)

if (Result.isSuccess(success)) {
  console.log(success.success)
  // Output: 42
}
```

**See**

- `succeed` to create a Success
- `isSuccess` to narrow the type
- `Failure` for the other variant

**Signature**

```ts
export interface Success<out A, out E> extends Pipeable, Inspectable {
  readonly _tag: "Success"
  readonly _op: "Success"
  readonly success: A
  readonly [TypeId]: {
    readonly _A: Covariant<E>
    readonly _E: Covariant<A>
  }
  [Symbol.iterator](): ResultIterator<Result<A, E>>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: ResultUnify<this>
  [Unify.ignoreSymbol]?: ResultUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Result.ts#L207)

Since v4.0.0