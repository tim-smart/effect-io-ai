Package: `effect`<br />
Module: `Cause`<br />

## Cause.map

Transforms the errors in a `Cause` using a user-provided function.

**Details**

This function applies `f` to each `Fail` error while leaving defects (`Die`)
and interruptions untouched. It's useful for changing or simplifying error
types in your effectful workflows.

**See**

- `as` Replace errors with a single constant

**Signature**

```ts
declare const map: { <E, E2>(f: (e: E) => E2): (self: Cause<E>) => Cause<E2>; <E, E2>(self: Cause<E>, f: (e: E) => E2): Cause<E2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L1017)

Since v2.0.0