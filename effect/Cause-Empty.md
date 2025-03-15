Package: `effect`<br />
Module: `Cause`<br />

## Cause.Empty

Represents a lack of errors within a `Cause`.

**See**

- `empty` Construct a new `Empty` cause
- `isEmptyType` Check if a `Cause` is an `Empty` type

**Signature**

```ts
export interface Empty extends Cause.Variance<never>, Equal.Equal, Pipeable, Inspectable {
  readonly _tag: "Empty"
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L455)

Since v2.0.0