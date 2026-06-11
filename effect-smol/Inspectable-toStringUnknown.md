Package: `effect`<br />
Module: `Inspectable`<br />

## Inspectable.toStringUnknown

Converts an unknown value to a string for diagnostics.

**When to use**

Use to produce a diagnostic string from a value whose runtime type is unknown.

**Details**

Strings are returned unchanged. Objects are formatted as JSON using the
provided whitespace setting when possible, and values that cannot be
formatted are converted with `String`.

**Signature**

```ts
declare const toStringUnknown: (u: unknown, whitespace?: number | string | undefined) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Inspectable.ts#L185)

Since v2.0.0