Package: `effect`<br />
Module: `Cause`<br />

## Cause.prettyErrors

Returns a list of prettified errors (`PrettyError`) from a `Cause`.

**Details**

This function inspects the entire `Cause` and produces an array of
`PrettyError` objects. Each object may include additional metadata, such as a
`Span`, to provide deeper insights into where and how the error occurred.

**Signature**

```ts
declare const prettyErrors: <E>(cause: Cause<E>) => Array<PrettyError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1531)

Since v3.2.0