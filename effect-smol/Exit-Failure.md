Package: `effect`<br />
Module: `Exit`<br />

## Exit.Failure

A failed Exit containing a Cause.

- Use `isFailure` to narrow an `Exit` to `Failure`
- Access the cause via the `cause` property after narrowing
- The `Cause<E>` may contain typed errors, defects, or interruptions

**Example** (Accessing the failure cause)

```ts
import { Exit } from "effect"

const failure = Exit.fail("something went wrong")

if (Exit.isFailure(failure)) {
  console.log(failure._tag) // "Failure"
  console.log(failure.cause) // Cause representing the error
}
```

**See**

- `isFailure` to narrow an Exit to Failure
- `Success` for the success counterpart

**Signature**

```ts
export interface Failure<out A, out E> extends Exit.Proto<A, E> {
  readonly _tag: "Failure"
  readonly cause: Cause.Cause<E>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L178)

Since v2.0.0