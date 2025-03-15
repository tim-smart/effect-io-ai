Package: `effect`<br />
Module: `Cause`<br />

## Cause.Fail

Represents an expected error within a `Cause`.

**Details**

This interface models a `Cause` that carries an expected or known error of
type `E`. For example, if you validate user input and find it invalid, you
might store that error within a `Fail`.

**See**

- `fail` Construct a `Fail` cause
- `isFailType` Check if a `Cause` is a `Fail`

**Signature**

```ts
export interface Fail<out E> extends Cause.Variance<E>, Equal.Equal, Pipeable, Inspectable {
  readonly _tag: "Fail"
  readonly error: E
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L474)

Since v2.0.0