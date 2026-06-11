Package: `effect`<br />
Module: `Exit`<br />

## Exit.Failure

A failed Exit containing a Cause.

**When to use**

Use when working with the failed branch of an `Exit` after narrowing with
`isFailure`. Access the cause via the `cause` property after
narrowing.

**Details**

The `Cause<E>` may contain typed errors, defects, or interruptions.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Exit.ts#L156)

Since v2.0.0