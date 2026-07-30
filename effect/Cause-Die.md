Package: `effect`<br />
Module: `Cause`<br />

## Cause.Die

Represents an unexpected defect within a `Cause`.

**Details**

This interface models a `Cause` for errors that are typically unrecoverable or
unanticipated—like runtime exceptions or bugs. When code "dies," it indicates a
severe failure that wasn't accounted for.

**See**

- `die` Construct a `Die` cause
- `isDieType` Check if a `Cause` is a `Die`

**Signature**

```ts
export interface Die extends Cause.Variance<never>, Equal.Equal, Pipeable, Inspectable {
  readonly _tag: "Die"
  readonly defect: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L494)

Since v2.0.0