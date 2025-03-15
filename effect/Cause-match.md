Package: `effect`<br />
Module: `Cause`<br />

## Cause.match

Transforms a `Cause` into a single value using custom handlers for each
possible case.

**Details**

This function processes a `Cause` by applying a set of custom handlers to
each possible type of cause: `Empty`, `Fail`, `Die`, `Interrupt`,
`Sequential`, and `Parallel`. The result of this function is a single value
of type `Z`. This function allows you to define exactly how to handle each
part of a `Cause`, whether it's a failure, defect, interruption, or a
combination of these.

The options parameter provides handlers for:
- `onEmpty`: Handles the case where the cause is `Empty`, meaning no errors
  occurred.
- `onFail`: Processes a failure with an error of type `E`.
- `onDie`: Processes a defect (unexpected error).
- `onInterrupt`: Handles a fiber interruption, providing the `FiberId` of the
  interruption.
- `onSequential`: Combines two sequential causes into a single value of type
  `Z`.
- `onParallel`: Combines two parallel causes into a single value of type `Z`.

**Signature**

```ts
declare const match: { <Z, E>(options: { readonly onEmpty: Z; readonly onFail: (error: E) => Z; readonly onDie: (defect: unknown) => Z; readonly onInterrupt: (fiberId: FiberId.FiberId) => Z; readonly onSequential: (left: Z, right: Z) => Z; readonly onParallel: (left: Z, right: Z) => Z; }): (self: Cause<E>) => Z; <Z, E>(self: Cause<E>, options: { readonly onEmpty: Z; readonly onFail: (error: E) => Z; readonly onDie: (defect: unknown) => Z; readonly onInterrupt: (fiberId: FiberId.FiberId) => Z; readonly onSequential: (left: Z, right: Z) => Z; readonly onParallel: (left: Z, right: Z) => Z; }): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1232)

Since v2.0.0