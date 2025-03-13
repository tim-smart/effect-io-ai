Package: `effect`<br />
Module: `Cause`<br />

## Cause.pretty

Converts a `Cause` into a human-readable string.

**Details**

This function pretty-prints the entire `Cause`, including any failures,
defects, and interruptions. It can be especially helpful for logging,
debugging, or displaying structured errors to users.

You can optionally pass `options` to configure how the error cause is
rendered. By default, it includes essential details of all errors in the
`Cause`.

**See**

- `prettyErrors` Get a list of `PrettyError` objects instead of a single string.

**Signature**

```ts
declare const pretty: <E>(cause: Cause<E>, options?: { readonly renderErrorCause?: boolean | undefined; }) => string
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1504)

Since v2.0.0