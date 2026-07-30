Package: `effect`<br />
Module: `Cause`<br />

## Cause.empty

Creates an `Empty` cause.

**Details**

This function returns a cause that signifies "no error." It's commonly used
to represent an absence of failure conditions.

**See**

- `isEmpty` Check if a `Cause` is empty

**Signature**

```ts
declare const empty: Cause<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L575)

Since v2.0.0