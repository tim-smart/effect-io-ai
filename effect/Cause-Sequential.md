Package: `effect`<br />
Module: `Cause`<br />

## Cause.Sequential

Represents sequential composition of two `Cause`s.

**Details**

This interface models the scenario where one error follows another in
sequence, such as when a main effect fails and then a finalizer also fails.
It ensures both errors are retained in the final `Cause`.

**See**

- `sequential` Combine two `Cause`s sequentially
- `isSequentialType` Check if a `Cause` is a `Sequential`

**Signature**

```ts
export interface Sequential<out E> extends Cause.Variance<E>, Equal.Equal, Pipeable, Inspectable {
  readonly _tag: "Sequential"
  readonly left: Cause<E>
  readonly right: Cause<E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L555)

Since v2.0.0