Package: `effect`<br />
Module: `Cause`<br />

## Cause.isDie

Checks if a `Cause` contains a defect.

**Details**

This function returns `true` if the `Cause` includes any unexpected or
unhandled errors (`Die`). It's useful for differentiating known failures from
unexpected ones.

**Signature**

```ts
declare const isDie: <E>(self: Cause<E>) => boolean
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L778)

Since v2.0.0