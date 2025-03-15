Package: `effect`<br />
Module: `Cause`<br />

## Cause.die

Creates a `Die` cause from an unexpected error.

**Details**

This function wraps an unhandled or unknown defect (like a runtime crash)
into a `Cause`. It's useful for capturing unforeseen issues in a structured
way.

**See**

- `isDie` Check if a `Cause` contains a defect

**Signature**

```ts
declare const die: (defect: unknown) => Cause<never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L607)

Since v2.0.0