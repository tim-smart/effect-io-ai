Package: `effect`<br />
Module: `Micro`<br />

## Micro.MicroCause

A `MicroCause` is a data type that represents the different ways a `Micro` can fail.

**Details**

`MicroCause` comes in three forms:

- `Die`: Indicates an unforeseen defect that wasn't planned for in the system's logic.
- `Fail`: Covers anticipated errors that are recognized and typically handled within the application.
- `Interrupt`: Signifies an operation that has been purposefully stopped.

**Signature**

```ts
type MicroCause<E> = | MicroCause.Die
  | MicroCause.Fail<E>
  | MicroCause.Interrupt
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L186)

Since v3.4.6