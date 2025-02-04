# isDie

Checks if a `Cause` contains a defect.

**Details**

This function returns `true` if the `Cause` includes any unexpected or
unhandled errors (`Die`). It's useful for differentiating known failures from
unexpected ones.

To import and use `isDie` from the "Cause" module:

```ts
import * as Cause from "effect/Cause"
// Can be accessed like this
Cause.isDie
```

**Signature**

```ts
export declare const isDie: <E>(self: Cause<E>) => boolean
```
