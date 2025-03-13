Package: `effect`<br />
Module: `Cause`<br />

## Cause.CauseReducer

Describes methods for reducing a `Cause<E>` into a value of type `Z` with
access to contextual information.

**Details**

This interface is meant for advanced transformations of `Cause`. By
implementing each method, you can define how different parts of the `Cause`
structure (like `Fail`, `Die`, or `Interrupt`) should be transformed into a
final type `Z`. The `context` parameter carries additional data needed during
this reduction.

**See**

- `reduceWithContext` Apply a `CauseReducer` to transform a `Cause`

**Signature**

```ts
export interface CauseReducer<in C, in E, in out Z> {
  emptyCase(context: C): Z
  failCase(context: C, error: E): Z
  dieCase(context: C, defect: unknown): Z
  interruptCase(context: C, fiberId: FiberId.FiberId): Z
  sequentialCase(context: C, left: Z, right: Z): Z
  parallelCase(context: C, left: Z, right: Z): Z
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L295)

Since v2.0.0