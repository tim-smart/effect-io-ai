Package: `effect`<br />
Module: `Cause`<br />

## Cause.Parallel

Represents parallel composition of two `Cause`s.

**Details**

This interface captures failures that happen simultaneously. In scenarios
with concurrency, more than one operation can fail in parallel. Instead of
losing information, this structure stores both errors together.

**See**

- `parallel` Combine two `Cause`s in parallel
- `isParallelType` Check if a `Cause` is a `Parallel`

**Signature**

```ts
export interface Parallel<out E> extends Cause.Variance<E>, Equal.Equal, Pipeable, Inspectable {
  readonly _tag: "Parallel"
  readonly left: Cause<E>
  readonly right: Cause<E>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L534)

Since v2.0.0