Package: `effect`<br />
Module: `Exit`<br />

## Exit.Success

A successful Exit containing a value.

- Use `isSuccess` to narrow an `Exit` to `Success`
- Access the value via the `value` property after narrowing

**Example** (Accessing the success value)

```ts
import { Exit } from "effect"

const success = Exit.succeed(42)

if (Exit.isSuccess(success)) {
  console.log(success._tag) // "Success"
  console.log(success.value) // 42
}
```

**See**

- `isSuccess` to narrow an Exit to Success
- `Failure` for the failure counterpart

**Signature**

```ts
export interface Success<out A, out E = never> extends Exit.Proto<A, E> {
  readonly _tag: "Success"
  readonly value: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L147)

Since v2.0.0