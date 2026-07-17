Package: `effect`<br />
Module: `UndefinedOr`<br />

## UndefinedOr.getOrThrow

Returns the defined value, or throws a default `Error` when the input is
`undefined`.

**When to use**

Use when you need to unwrap a value that should already be defined and a
generic missing-value `Error` is acceptable.

**Details**

Defined inputs are returned unchanged. `undefined` throws
`new Error("getOrThrow called on a undefined")`.

**See**

- `getOrThrowWith` for the sibling that lets callers choose the thrown value
- `match` for handling defined and undefined cases without throwing

**Signature**

```ts
declare const getOrThrow: <A>(self: A | undefined) => A
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UndefinedOr.ts#L118)

Since v4.0.0